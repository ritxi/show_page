module ShowPage

  def show_page

    save_page('capybara.html')
    Launchy::Browser.run("http://localhost:3000/capybara.html")

  end

end

Capybara.save_and_open_page_path = Rails.root.join('public')