Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'spree_pages'
  s.version     = '0.60.0.RC1'
  s.summary     = 'Adds a basic CMS to Spree'
  s.description = 'Simple page based CMS for Spree'
  s.required_ruby_version = '>= 1.8.7'

  s.author            = 'sebastyuiop'
  # s.email             = 'david@loudthinking.com'
  # s.homepage          = 'http://www.rubyonrails.org'
  # s.rubyforge_project = 'actionmailer'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.require_path = 'lib'
  s.requirements << 'none'

  s.add_dependency('spree_core', '>= 0.60.0.RC1')
end
