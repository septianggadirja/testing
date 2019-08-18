class Pages
  def register_page
    @register_page ||= RegisterPage.new
  end

  def login_page
    @login_page ||= LoginPage.new
  end

  def home_page
    @home_page ||= HomePage.new
  end

  def faskes_page
    @faskes_page ||= FaskesPage.new
  end
end
