# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{mobile-fu}
  s.version = "2.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.3.6") if s.respond_to? :required_rubygems_version=
  s.authors = ["Thomas Lundstr\303\266m"]
  s.date = %q{2010-12-28}
  s.description = %q{Want to automatically detect mobile devices that access your Rails application? Mobile Fu allows you to do just that. People can access your site from a Palm, Blackberry, iPhone, iPad, Nokia, etc. and it will automatically adjust the format of the request from :html to :mobile.}
  s.email = ["thomas.lundstrom@gmail.com"]
  s.files = ["lib/mobile-fu.rb", "lib/mobile_fu_helper.rb", "lib/mobilized_styles.rb", "rails/init.rb", "MIT-LICENSE", "README.rdoc", "CHANGELOG"]
  s.homepage = %q{https://github.com/thomaslundstrom/mobile-fu/}
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{Automatically detect mobile requests from mobile devices in your Rails application.}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
