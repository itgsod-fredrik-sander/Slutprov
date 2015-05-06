class Loginpage < Abstractpage

  def loginable?
    login_availability
    fill_username('mira')
    fill_password('mira123')
    submit

    return true
  end

  private
  def login_availability
    @page.has_css? '#login'
  end

  def fill_username(username)
    @page.fill_in('username', :with => username)
  end

  def fill_password(password)
    @page.fill_in('password', :with => password)
  end

  def submit
    @page.click_button 'Submit'
  end
end