
# Add all gems in the global gemset to the $LOAD_PATH so they can be used in rails3 console with bundler
if defined?(::Bundler)
  $LOAD_PATH.concat Dir.glob("#{ENV['GEM_PATH'].split(":").first}/gems/*/lib")
end

require 'rubygems'
require 'pp'
require 'brice/init'
require 'awesome_print'
AwesomePrint.irb! if defined? AwesomePrint

def source_for(object, method_sym)
  if object.respond_to?(method_sym, true)
    method = object.method(method_sym)
  elsif object.is_a?(Module)
    method = object.instance_method(method_sym)
  end
  location = method.source_location
  `vim #{location[0]} +#{location[1]}` if location
  location
rescue
  nil
end
