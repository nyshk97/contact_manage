module AuthenticationForFeatureRequest
  def login(user, password = 'login')
    user.activate!
    user.update_attributes password: password

    page.driver.post login_url, { email: user.email, password: password }
    visit root_url
  end
end
