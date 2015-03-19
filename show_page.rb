require 'launchy'

module ShowPage
  def show_page

    save_page('capybara.html')
    ::Launchy.open("http://localhost:3000/capybara.html")
  end
end

RSpec.configure do |config|
  Capybara.save_and_open_page_path = Rails.root.join('public')
  config.include ShowPage, type: :request
end
