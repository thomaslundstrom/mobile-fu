require 'rake'
require 'rake/testtask'
require 'rake/rdoctask'
require "rake/gempackagetask"

desc 'Default: run unit tests.'
task :default => :test

#todo: the tests seem to be removed and replaced with rspec specs instead...
desc 'Test the mobile-fu plugin.'
Rake::TestTask.new(:test) do |t|
  t.libs << 'lib'
  t.pattern = 'test/**/*_test.rb'
  t.verbose = true
end

desc 'Generate documentation for the mobile-fu plugin.'
Rake::RDocTask.new(:rdoc) do |rdoc|
  rdoc.rdoc_dir = 'rdoc'
  rdoc.title    = 'mobile-fu'
  rdoc.options << '--line-numbers' << '--inline-source'
  rdoc.rdoc_files.include('README')
  rdoc.rdoc_files.include('lib/**/*.rb')
end


spec = Gem::Specification.new do |s|

  s.name        = "mobile-fu"
  s.version     = "3.0.0"
  s.platform    = Gem::Platform::RUBY

  s.authors     = ["The Author's Name"]
  s.email       = ["the.authors@email.address.com"]
  s.homepage    = "https://github.com/brendanlim/mobile-fu/"

  s.summary     = "Automatically detect mobile requests from mobile devices in your Rails application."
  s.description = "Want to automatically detect mobile devices that access your Rails application? Mobile Fu allows you to do just that. People can access your site from a Palm, Blackberry, iPhone, iPad, Nokia, etc. and it will automatically adjust the format of the request from :html to :mobile."

  s.required_rubygems_version = ">= 1.3.6"

  # required for validation
#  s.rubyforge_project         = "mobile-fu"

  # If you have other dependencies, add them here
#todo: here, add development dep to rspec
#s.add_development_dependency("rspec")

  s.files        = Dir["{lib}/**/*.rb", "rails/init.rb", "MIT-LICENSE", "README.rdoc", "CHANGELOG"]

  s.require_path = 'lib'
end

desc 'Package the gem'
Rake::GemPackageTask.new(spec) do |pkg|
  pkg.gem_spec = spec
end


desc "Build the gemspec file #{spec.name}.gemspec"
task :gemspec do
  file = File.dirname(__FILE__) + "/#{spec.name}.gemspec"
  File.open(file, "w") {|f| f << spec.to_ruby }
end


desc "Remove any temporary products, including gemspec"
task :clean => [:clobber] do
  rm "#{spec.name}.gemspec"
end

desc "Package the library and generates the gemspec"
task :package => [:gemspec]
