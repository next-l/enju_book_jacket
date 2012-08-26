$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "enju_book_jacket/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "enju_book_jacket"
  s.version     = EnjuBookJacket::VERSION
  s.authors     = ["Kosuke Tanabe"]
  s.email       = ["tanabe@mwr.mediacom.keio.ac.jp"]
  s.homepage    = "https://github.com/nabeta/enju_book_jacket"
  s.summary     = "enju_book_jacket plugin"
  s.description = "Display book jackets on Next-L Enju"

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["spec/**/*"]

  s.add_dependency "rails", "~> 3.2"
  # s.add_dependency "jquery-rails"

  s.add_development_dependency "sqlite3"
  s.add_development_dependency "rspec-rails"
  s.add_development_dependency "enju_biblio", "~> 0.1.0.pre6"
  s.add_development_dependency "vcr"
end
