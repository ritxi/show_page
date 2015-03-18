Gem::Specification.new do |s|
  s.name        = 'ShowPage'
  s.version     = '0.1.0'
  s.platform    = Gem::Platform::RUBY
  s.author      = 'Ricard Forniol'
  s.email       = 'ricard@forniol.cat'
  s.summary     = 'show_page!'
  s.description = 'Open capybara test page on your browser'

  s.files         = ['show_page.rb']
  s.test_file     = ''
  s.require_path  = '.'

  s.add_dependency('capybara')
  s.add_dependency('launchy')
end
