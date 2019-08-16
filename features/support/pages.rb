class Pages
  def login_page
    @login_page ||= LoginPage.new
  end

  def home_page
    @home_page ||= HomePage.new
  end

end
