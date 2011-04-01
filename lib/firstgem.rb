require 'firstgem/shape'
require 'rbconfig'

# include the native extension explicitly
# since there is already .rb file with the same name.
require "firstgem.#{RbConfig::CONFIG["DLEXT"]}"

include Firstgem

module Firstgem
  # Your code goes here...
end
