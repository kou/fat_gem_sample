require "rake/extensiontask"

spec = Gem::Specification.new
spec.name = "fat_gem_sample"
spec.version = "1.0.0"
spec.summary = "This is a sample Ruby exntention library."
spec.author = "Kouhei Sutou"
spec.files = []
spec.files += Dir.glob("lib/**/*.rb")
spec.files += Dir.glob("ext/**/*.{c,rb}")
spec.extensions = ["ext/#{spec.name}/extconf.rb"]
spec.add_runtime_dependency("rake-compiler")

Rake::ExtensionTask.new(spec.name, spec) do |ext|
  ext.cross_compile = true
  ext.cross_platform = ["x86-mingw32", "x64-mingw32"]
end
