begin
  major, minor, _ = RUBY_VERSION.split(/\./)
  require "#{major}.#{minor}/fat_gem_sample.so"
rescue LoadError
  require "fat_gem_sample.so"
end
