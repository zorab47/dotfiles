#!/usr/bin/env ruby

require 'ruby-let'

class Time
  def week
    strftime('%U').to_i
  end
end

puts IO.popen('spark', 'w+') {|f|
  f.write Time.now.let {|now, min=(now - 31536000)|
    `git log --pretty=format:'%an: %at'`.split(/\r?\n/).map {|line|
      Time.at(line.split(' ').last.to_i).let {|c|
        ((c.year == min.year && c.week >= min.week) || (c.year == now.year && c.week <= now.week)) ? c : nil
      }
    }.compact.group_by {|x| x.strftime('%G%U') }.inject({}) {|res, (k, v)|
      res[k] = v.size
      res
    }.let {|act|
      (0...52).map {|i|
        act[(min + 604800 * i).strftime('%G%U')] || 0
      }.join(',')
    }
  }
  f.close_write
  f.read
}
