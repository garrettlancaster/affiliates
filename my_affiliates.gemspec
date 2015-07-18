$:.push File.expand_path("../lib", __FILE__)

Gem::Specification.new do |s|
  s.name        = 'my_affiliates'
  s.version     = '0.0.0'
  s.date        = '2015-07-18'
  s.summary     = "Affiliate resources from Amazon, and perhaps others in the future"
  s.description = "Affiliate resources from Amazon, and perhaps others in the future"
  s.authors     = ["Garrett Lancaster"]
  s.email       = 'glancast@garrettlancaster.com'
  s.files       = `git ls-files`.split("\n")
  s.homepage    = 'http://rubygems.org/gems/my-affiliates'
  s.license     = 'MIT'
end