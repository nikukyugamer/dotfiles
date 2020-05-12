# Inspired by https://gist.github.com/skojin/794915
if defined?(::Bundler)
  current_gemset = '/USER_NO_HOME_DIRECTORY/.rbenv/versions/2.7.1/lib/ruby/gems/2.7.0'
  $LOAD_PATH.concat(Dir.glob("#{current_gemset}/gems/*/lib")) if current_gemset
end

require 'rb-readline'
require 'readline'

def RbReadline.rl_reverse_search_history(sign, key)
  rl_insert_text `cat ~/.pry_history | fzf --tac |  tr '\n' ' '`
end
