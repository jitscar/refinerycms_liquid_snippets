$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "refinerycms_liquid_snippets/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "refinerycms_liquid_snippets"
  s.version     = RefinerycmsLiquidSnippets::VERSION
  s.authors     = ["Your name"]
  s.email       = ["Your email"]
  s.homepage    = ""
  s.summary     = ": Summary of RefinerycmsLiquidSnippets."
  s.description = ": Description of RefinerycmsLiquidSnippets."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency 'refinerycms'
  s.add_dependency 'refinerycms-snippets'
  s.add_dependency 'clot_engine'
  s.add_dependency 'liquid'
end
