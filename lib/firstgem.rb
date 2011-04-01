require 'firstgem/shape'
begin
  require 'firstgem_calc' # include the native extension. Ruby automatically appends the correct file extension.
rescue
  puts "Fallback: require 'firstgem_calc.bundle'"
  require 'firstgem_calc.bundle' # Is this needed?
end

include Firstgem

module Firstgem
  # Your code goes here...
end
