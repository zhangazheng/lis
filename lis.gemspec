$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "lis/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "lis"
  s.version     = Lis::VERSION
  s.authors     = ["zhangzheng"]
  s.email       = ["lovezhang.zheng@gmai.com"]
  s.homepage    = ""
  s.summary     = %q{lis}
  s.description = %q{Lis}

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]

  
end
