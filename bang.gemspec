Gem::Specification.new do |s|
  s.name        = 'bang'
  s.version     = '0.1.0'
  s.platform    = Gem::Platform::RUBY
  s.author      = 'Jeff Kreeftmeijer'
  s.email       = 'jeff@kreeftmeijer.nl'
  s.summary     = 'Bang!'
  s.description = 'Bangs existing model methods'

  s.files         = ['bang.rb']
  s.test_file     = 'bang_spec.rb'
  s.require_path  = '.'

  s.add_development_dependency('rspec', ["~> 2.0"])
end
