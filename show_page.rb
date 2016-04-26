require 'launchy'

module ShowPage
  def show_page
    save_page(::Rails.root.join('public', 'capybara.html'))
    ::Launchy.open("http://localhost:3000/capybara.html")
  end
end

RSpec.configure do |config|
  config.before(:suite) do
    Capybara.save_path = ::Rails.root.join('public')
  end

  config.include ShowPage, type: :request
end
