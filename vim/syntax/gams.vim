" Vim syntax file
" Language:        gams
" Filenames:       *.gms
" For version 5.x: Clear all syntax items
" For version 6.x: Quit when a syntax file was already loaded
if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif

" gams is not case sensitive
syn case ignore


" KEYWORDS

" for model definition and solve 
" gams statements defined as regions below: set, parameter, model, equation, variable, Table
syn keyword gamsStatement       Solve using
syn keyword gamsStatement       display 
syn keyword gamsStatement       option 
syn keyword gamsStatement       Alias 
syn keyword gamsStatement       Scalar 
syn keyword gamsStatement       sameas abort 
syn keyword gamsStatement	free semicont semiint sos1 sos2 binary integer
syn keyword gamsStatement	positive negative
syn keyword gamsStatement       xxpto


" model types
syn keyword gamsStatement       lp mip nlp mcp mpec cns dnlp minlp qcp
syn keyword gamsStatement       miqcp rmip rminlp rmiqcp 

" external utilities  
syn keyword gamsStatement       put file putclose putpage puttl puthd

" control structures and logical operators 
syn keyword gamsConditional     if else Elseif ifi exist IFE
syn keyword gamsConditional     ne ge le eq gt lt
syn keyword gamsRepeat          loop while repeat until
syn keyword gamsRepeat          for to Downto By 
" logical and math operators
syn match gamsMathsOperator "-\|=\|[:+^/\\]"
syn match gamsMathsOperator "\A\(AND\|OR\|XOR\|NOT\)\A"hs=s+1,he=e-1

" math and statistical functions
syntax keyword gamsFunction      ABS ASC sigmoid sum
syntax keyword gamsFunction      acos acosh asin asinh atan atan2
syntax keyword gamsFunction      atanh ceil ctime cos cosh exp floor log log10
syntax keyword gamsFunction      max min precision round sin sinh sqrt tan tanh sqrt
syntax keyword gamsFunction      smax smin 
syntax keyword gamsFunction      time trunc div
syntax keyword gamsFunction      beta betareg binomial edist entropy errorf fact
syntax keyword gamsFunction      gamma gammareg logbeta loggamma normal
syntax keyword gamsFunction      mapval mod ncpcm ncpf pi poly power
syntax keyword gamsFunction      sign trunc uniform uniformint

" execution time gdx commands
syn keyword gamsSpecial execute_load execute_unload



" usually dollar commands are put to the first position within the line
" but if there is an $if[ie] command before...
syn match gamsSpecial "\$option" 
syn match gamsSpecial "\$call"
syn match gamsSpecial "\$eval"
syn match gamsSpecial "\$evalglobal"
syn match gamsSpecial "\$evallocal"

syn match gamsSpecial "\$if"
syn match gamsSpecial "\$ifi"
syn match gamsSpecial "\$endif"
syn match gamsSpecial "\$endifi"
syn match gamsSpecial "\$iftheni"
syn match gamsSpecial "\$ifthene"

syn match gamsSpecial "\$gdxin"
syn match gamsSpecial "\$gdxout"
syn match gamsSpecial "\$load"
syn match gamsSpecial "\$unload"
syn match gamsSpecial "\$include"
syn match gamsSpecial "\$batinclude"
syn match gamsSpecial "\$libinclude"
syn match gamsSpecial "\$sysinclude"
syn match gamsSpecial "\$goto"
syn match gamsSpecial "\$label"
syn match gamsSpecial "\$exit"
syn match gamsSpecial "\$kill"

syn match gamsSpecial "\$offlisting"
syn match gamsSpecial "\$onlisting"
syn match gamsSpecial "\$oneolcom"
syn match gamsSpecial "\$offeolcom"

syn match gamsSpecial "\$stars"
syn match gamsSpecial "\$setglobal"
syn match gamsSpecial "\$dropglobal"
syn match gamsSpecial "\$setlocal"
syn match gamsSpecial "\$droplocal"
syn match gamsSpecial "\$setenv"
syn match gamsSpecial "\$setnames"

syn match gamsSpecial "\$onglobal"
syn match gamsSpecial "\$offglobal"

syn match gamsSpecial "\$setargs"
syn match gamsSpecial "\$onmulti"
syn match gamsSpecial "\$offmulti"
syn match gamsSpecial "\$onempty"
syn match gamsSpecial "\$offempty"

syn match gamsSpecial "\$comment"
syn match gamsSpecial "\$dollar"
syn match gamsSpecial "\$double"
syn match gamsSpecial "\$single"
syn match gamsSpecial "\$echo"
syn match gamsSpecial "\$echon"
syn match gamsSpecial "\$eject"
syn match gamsSpecial "\$error"
syn match gamsSpecial "\$escape"
syn match gamsSpecial "\$expose"
syn match gamsSpecial "\$hidden"
syn match gamsSpecial "\$hide"

syn match gamsSpecial "\$inlinecom"
syn match gamsSpecial "\$lines"
syn match gamsSpecial "\$log"

syn match gamsSpecial "\$maxcol"
syn match gamsSpecial "\$mincol"
syn match gamsSpecial "\$offdigit"
syn match gamsSpecial "\$ondigit"
syn match gamsSpecial "\$offend"
syn match gamsSpecial "\$onend"
syn match gamsSpecial "\$offeps"
syn match gamsSpecial "\$oneps"
syn match gamsSpecial "\$offinline"
syn match gamsSpecial "\$oninline"
syn match gamsSpecial "\$offmargin"
syn match gamsSpecial "\$onmargin"
syn match gamsSpecial "\$offnestcom"
syn match gamsSpecial "\$onnestcom"

syn match gamsSpecial "\$onput"
syn match gamsSpecial "\$onputs"
syn match gamsSpecial "\$onputv"
syn match gamsSpecial "\$offput"

syn match gamsSpecial "\$onsymlist"
syn match gamsSpecial "\$offsymlist"
syn match gamsSpecial "\$onsymxref"
syn match gamsSpecial "\$offsymxref"
syn match gamsSpecial "\$onuellist"
syn match gamsSpecial "\$offuellist"
syn match gamsSpecial "\$onuelxref"
syn match gamsSpecial "\$offuelxref"

syn match gamsSpecial "\$onundf"
syn match gamsSpecial "\$offundf"
syn match gamsSpecial "\$onupper"
syn match gamsSpecial "\$offupper"
syn match gamsSpecial "\$onwarning"
syn match gamsSpecial "\$offwarning"

syn match gamsSpecial "\$phantom"
syn match gamsSpecial "\$prefixpath"
syn match gamsSpecial "\$protect"
syn match gamsSpecial "\$purge"
syn match gamsSpecial "\$remark"

syn match gamsSpecial "\$setcomps"
syn match gamsSpecial "\$setddlist"
syn match gamsSpecial "\$shift"
syn match gamsSpecial "\$show"

syn match gamsSpecial "\$use205"
syn match gamsSpecial "\$use225"
syn match gamsSpecial "\$use999"

syn match gamsSpecial "\$title"
syn match gamsSpecial "\$stitle"

syn match gamsSpecial "\$abort"
syn match gamsSpecial "\$terminate"
syn match gamsSpecial "\$stop"


syn match gamsSpecial "\$("he=e-1



" uncomment to hihglight every word starting with a dollar sign in the beggining of the line
"syn match gamsSpecial           "^\$\<[^ ]\+\>"


"integer number, or floating point number without a dot.
"use the special boundary symbols \< and \>
syn match  gamsNumber           "\<\d\+\>"
syn match  gamsNumber           "\<[-+]\d\+\>"
"floating point number, with dot
syn match  gamsNumber           "\<\d\+\.\d*\>"
syn match  gamsNumber           "\<[-+]\d\+\.\d*\>"
"floating point number, starting with a dot
syn match  gamsNumber           "\<\.\d\+\>"
syn match  gamsNumber           "\<[-+]\.\d\+\>"
" scientific notation (with exponent)? 
" Floating point like number with E and decimal point (+,-)
syn match gamsNumber '\<[-+]\=\d[[:digit:]]*\.\d*[eE][\-+]\=\d\+\>'
syn match gamsNumber '\<\d[[:digit:]]*\.\d*[eE][\-+]\=\d\+\>'

" special numbers
syn keyword gamsNumber eps na undf
syn match gamsNumber "[-+]inf" 




" suffixes -- all from Henry
	syn match gamsSuffix /\.pc/
	syn match gamsSuffix /\.ps/
	syn match gamsSuffix /\.pw/
	syn match gamsSuffix /\.tm/
	syn match gamsSuffix /\.bm/
	syn match gamsSuffix /\.case/
	syn match gamsSuffix /\.data/
	syn match gamsSuffix /\.ifile/
	syn match gamsSuffix /\.ofile/
	syn match gamsSuffix /\.page/
	syn match gamsSuffix /\.rdate/
	syn match gamsSuffix /\.rfile/
	syn match gamsSuffix /\.rtime/
	syn match gamsSuffix /\.sfile/
	syn match gamsSuffix /\.time/
	syn match gamsSuffix /\.title/
	syn match gamsSuffix /\.ts/
	syn match gamsSuffix /\.tl/
	syn match gamsSuffix /\.te/
	syn match gamsSuffix /\.tf/
	syn match gamsSuffix /\.l/
	syn match gamsSuffix /\.lo/
	syn match gamsSuffix /\.m/
	syn match gamsSuffix /\.fx/
	syn match gamsSuffix /\.prior/
	syn match gamsSuffix /\.scale/
	syn match gamsSuffix /\.up/
	syn match gamsSuffix /\.lj/
	syn match gamsSuffix /\.nj/
	syn match gamsSuffix /\.sj/
	syn match gamsSuffix /\.tj/
	syn match gamsSuffix /\.lw/
	syn match gamsSuffix /\.nw/
	syn match gamsSuffix /\.sw/
	syn match gamsSuffix /\.tw/
	syn match gamsSuffix /\.nd/
	syn match gamsSuffix /\.nr/
	syn match gamsSuffix /\.nz/
	syn match gamsSuffix /\.cc/
	syn match gamsSuffix /\.hdcc/
	syn match gamsSuffix /\.tlcc/
	syn match gamsSuffix /\.cr/
	syn match gamsSuffix /\.hdcr/
	syn match gamsSuffix /\.tlcr/
	syn match gamsSuffix /\.ll/
	syn match gamsSuffix /\.hdll/
	syn match gamsSuffix /\.tlll/
	syn match gamsSuffix /\.lp/
	syn match gamsSuffix /\.ws/
	syn match gamsSuffix /\.errors/



" String and Character contstants
syn region  gamsString            start=+"+  skip=+\\\\\|\\"+  end=+"+
" with single quotes as well
syn region  gamsString            start=+'+  skip=+\\\\\|\\"+  end=+'+




" ?? =e=, =g=, =l=

" to include .csv files
syn region gamsInclude start="^\$ondelim" end="^\$offdelim"


" GAMS global variables e.g. %myglobal%  
syn region gamsInclude start="%" end="%\|\$"

" when a command line parameter is passed to the gams code the %1 notation can be used
syn match  gamsInclude           "%\d\+"

" GAMS comments (see REGIONS section as well)
" switch on for end of line comments 
" syn match   gamsComment         "#.*$"

" TODO and FIXME are special keywords in comments
syntax keyword gamsTodo contained       TODO FIXME
syntax match gamsComment       "^\*.*" contains=gamsTodo 
" GAMS comment regions 
syntax region  gamsComment         start="^\$ontext" end="^\$offtext"


" equation declaration and definition regions
	syn region gamsEqn matchgroup=Delimiter start=/\.\.\s/ matchgroup=Delimiter end=/;/ fold transparent contains=gamsComment,gamsNumber,gamsConditional,gamsRepeat,gamsFunction,gamsMathsOperator,gamsSuffix
	syn region gamsEqDecl matchgroup=Delimiter start=/^[ \t\.]*equation[ s\n]/ matchgroup=Delimiter end=/;/ fold transparent contains=gamsComment,gamsString
	syn match gamsEqDeclComment /^[ \t]*[^ \t]*\zs[^;$\/]*/ contained 

" variable declaration region
	syn region gamsVar matchgroup=Delimiter start=/^[ \t\.]*variable[ s\n]/ matchgroup=Delimiter end=/;/ fold transparent contains=gamsVarComment,gamsComment,gamsString
	syn match gamsVarComment /^[ \t]*[^ \t]*\zs[^;$\/]*/ contained 

" set region
	syn region gamsSet matchgroup=Delimiter start=/^[ \t\.]*set[ s\n]/ matchgroup=Delimiter end=/;/ fold transparent contains=gamsSetComment,gamsComment,gamsSetValues,gamsString
	syn match gamsSetComment /^[ \t]*[^ \t]*\zs[^;$\/]*/ contained 
	syn region gamsSetValues matchgroup=Delimiter start=/\// matchgroup=Delimiter end=/\// transparent contains=gamsComment,gamsString contained

" parameter region
	syn region gamsParam matchgroup=Delimiter start=/^[ \t\.]*parameter[ s\n]/ matchgroup=Delimiter end=/;/ fold transparent contains=gamsParamValues,gamsComment,gamsString
"	syn match gamsParamComment /^[ \t]*[^ \t]*\zs[^;$\/]*/ contained 
	syn region gamsParamValues matchgroup=Delimiter start=/\// matchgroup=Delimiter end=/\// transparent contains=gamsNumber contained

" table region
	syn region gamsTable matchgroup=Delimiter start=/^[ \t\.]*table[ s\n]/ matchgroup=Delimiter end=/;/ fold transparent contains=gamsNumber,gamsComment,gamsString

" model definition region
	syn region gamsModel matchgroup=Delimiter start=/^[ \t\.]*model[ \n]/ matchgroup=Delimiter end=/;/ fold transparent contains=gamsModelValues,gamsComment,gamsString
	syn region gamsModelValues matchgroup=Delimiter start=/\// matchgroup=Delimiter end=/\// transparent contained






" Define the default highlighting.
" For version 5.7 and earlier: only when not done already
" For version 5.8 and later: only when an item doesn't have
" highlighting yet
if version >= 508 || !exists("did_gams_syntax_inits")
  if version < 508
    let did_gams_syntax_inits = 1
    command -nargs=+ HiLink hi link <args>
  else
    command -nargs=+ HiLink hi def link <args>
  endif

  HiLink gamsLabel              Label
  HiLink gamsConditional        Conditional
  HiLink gamsRepeat             Repeat
  HiLink gamsLineNumber         Comment
  HiLink gamsNumber             Number
  HiLink gamsError              Error
  HiLink gamsStatement          Statement
  HiLink gamsString             String
  HiLink gamsComment            Comment
  HiLink gamsSpecial            Special
  HiLink gamsTodo               Todo
  HiLink gamsFunction           Identifier
  HiLink gamsTypeSpecifier      Type
  HiLink gamsFilenumber         gamsTypeSpecifier
  HiLink gamsInclude            Special 
  HiLink gamsSuffix             Statement 
  hi gamsMathsOperator term=bold cterm=bold gui=bold

  delcommand HiLink
endif

let b:current_syntax = "gams"

" vim: ts=8 

