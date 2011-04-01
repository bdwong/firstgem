require 'mkmf'
# Note: It's not a good idea to name the extension the same as the module,
# otherwise it will be more difficult to include. See workaround in firstgem.rb

# Include standard c++ libs
if RUBY_PLATFORM =~ /linux/ #and RbConfig::MAKEFILE_CONFIG["host_cpu"] == "x86_64"
  have_library('stdc++')
end

create_makefile('firstgem')

# Create wrapper target so it's easier to make the extension.
open("Makefile", "a") do |mf|
  mf.puts <<-EOM
SWIG=swig
SWIG_I=*.i

wrapper: $(SWIG_I)
	$(SWIG) -c++ -ruby $(SWIG_I)
	sed -i '' -e 's/STR2CSTR/StringValuePtr/' *.cxx
  EOM
end
