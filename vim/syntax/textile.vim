"
"   You will have to restart vim for this to take effect.  In any case
"   it is a good idea to read ":he new-filetype" so that you know what
"   is going on, and why the above lines work.
"
"   Written originally by Dominic Mitchell, Jan 2006.
"   happygiraffe.net
"
"   Modified by Aaron Bieber, May 2007.
"   blog.aaronbieber.com
"
"   Modified by Tim Harper, July 2008 - current
"   tim.theenchanter.com
" @(#) $Id$

let textile_css=1
let textile_html=1

if version < 600
    syntax clear
elseif exists("b:current_syntax")
    finish
endif

if !exists("main_syntax")
  let main_syntax = 'textile'
endif

" CSS highlighting.
if exists("textile_css")
    syn include @cssTop syntax/css.vim 
    syn cluster cssTop remove=cssTagName
    syn sync clear
    unlet b:current_syntax
endif

" HTML highlighting.
if exists("textile_html")
    syn include @htmlTop syntax/html.vim 
    syn sync clear
    unlet b:current_syntax
endif

syn region textileHtml start="<\s*[-a-zA-Z0-9]\+" end="</\s*[-a-zA-Z0-9]\+>" end="/>" keepend contains=@htmlTop

syn region textileComment start="<!--" end="-->" keepend

syn region textileCode start="<code>"ms=s+6 end="</code>" contains=@NoSpell
syn region textilePreformatted start="<pre\>" end="</pre>" keepend contains=textileCode,@htmlTop

syn region textileCss start="{" end="}" keepend contains=@cssTop contained
syn region textileParenthisis start="(" end=")" contained contains=@textileCssClass,@textileCssId
syn region textileLanguage start="\[" end="\]" contained

" Match the following block alignment modifiers and indentions: <, >, <>, =,
" and (, ). Get help in 'perl-patterns'
syn match textileAlignment /\%(<\(>\)\@!\|<\@<!>\|<>\|=\|[()]\+ \@!\)/ contained


" Textile commands like "h1" are case sensitive, AFAIK.
syn case match

" Textile syntax: <http://textism.com/tools/textile/>

syn region textileLinkText matchgroup=String start=+"+ end=+"+ contained keepend contains=textileTitleAttribute
syn region textileLinkHref  start=+:+ms=s+1 end="$" contained contains=@NoSpell

" Attributes
syn region textileTitleAttribute start="(" end=")" contained keepend

" Inline elements.
syn match txtEmphasis    /_[^_]\+_/
syn match txtBold        /\*[^*]\+\*/
syn match txtCite        /??.\+??/
syn match txtDeleted     /-[^-]\+-/
syn match txtInserted    /+[^+]\++/
syn match txtSuper       /\^[^^]\+\^/
syn match txtSub         /\~[^~]\+\~/
syn match txtSpan        /%[^%]\+%/     contains=textileCss
syn match txtFootnoteRef /\[[0-9]\+]/
syn match txtCode        /@[^@]\+@/

" Everything after the first colon is from RFC 2396, with extra
" backslashes to keep vim happy...  Original:
" ^(([^:/?#]+):)?(//([^/?#]*))?([^?#]*)(\?([^#]*))?(#(.*))?
"
" Revised the pattern to exclude spaces from the URL portion of the
" pattern. Aaron Bieber, 2007.
syn match txtLink  /"[^"]\+":\(\([^:\/?# ]\+\):\)\?\(\/\/\([^\/?# ]*\)\)\?\([^?# ]*\)\(?\([^# ]*\)\)\?\(#\([^ ]*\)\)\?/            contains=textileLinkText,textileLinkHref
syn match txtImage /![^!]\+!\%(:\(\([^:\/?# ]\+\):\)\?\(\/\/\([^\/?# ]*\)\)\?\([^?# ]*\)\(?\([^# ]*\)\)\?\(#\([^ ]*\)\)\?\)\{0,1}/ contains=textileTitleAttribute

syn cluster txtInlineElement contains=txtEmphasis,txtBold,txtCite,txtDeleted,txtInserted,txtSuper,txtSub,txtSpan,txtLink,txtCode

syn region textileBlockTag start="^\(bq\|bc\|notextile\|pre\|h[1-6]\|fn\d+\|p\)" end="\. "me=e-2 keepend contains=textileAlignment,textileCss,textileBlockName,@NoSpell
syn region textileBlockContent start="\. "ms=s+2 end="$" contained contains=@txtInlineElement,textileHtml keepend transparent

" block names
syn keyword textileBlockName contained table bq fn p
syn match   textileBlockName /^\(h[1-6]\)/ contained

" Block elements.
"syn region textileH1 start="^h1" end="$" keepend contains=textileTop,textileBlockTag,textileBlockContent
"syn region textileH2 start="^h2" end="$" keepend contains=textileTop,textileBlockTag,textileBlockContent
syn match txtFootnoteDef    /^fn[0-9]\+\./
syn match txtListBullet     /\v^ {0,1}\*+ /
syn match txtListBullet2    /\v^ {0,1}(\*\*)+ /
syn match txtListNumber     /\v^ {0,1}#+(\{[^\}]*\}){0,1} /                contains=textileCss
syn match txtListNumber2    /\v^ {0,1}(##)+(\{[^\}]*\}){0,1} /             contains=textileCss
syn match txtTable          /^table\({[^}]*}\)\{0,1\}\./                   contains=textileCss

syn cluster txtBlockElement contains=txtHeader,txtBlockElement,txtFootnoteDef,txtListBullet,txtListNumber

if version >= 508 || !exists("did_txt_syn_inits")
    if version < 508
        let did_txt_syn_inits = 1
        command -nargs=+ HiLink hi link <args>
    else
        command -nargs=+ HiLink hi def link <args>
    endif

    HiLink textileBlockName Statement
    HiLink textileCode Constant

    HiLink textileBlockTag Title

    HiLink txtBlockquote Comment
    HiLink txtListBullet Operator
    HiLink txtListBullet2 Constant
    HiLink txtListNumber Operator
    HiLink txtListNumber2 Constant

    HiLink textileComment Comment

    HiLink textileLinkText Underlined
    HiLink textileLinkHref String
    HiLink textileTitleAttribute Comment

    HiLink txtCode Identifier
    HiLink txtImage Constant
    HiLink txtParagraph Title
    HiLink txtTable Title

    HiLink textileAlignment Title

    hi def txtEmphasis term=italic cterm=italic gui=italic
    hi def txtBold     term=bold cterm=bold gui=bold

    delcommand HiLink
endif

" vim: set ai et sw=4 nowrap :
