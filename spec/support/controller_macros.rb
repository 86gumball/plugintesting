module ControllerMacros
  def login_user
    before :each do
      usr = User.create(email: "user0@example.com", password: "123456", username: "user0")
      sign_in_as(id: usr.id)
    end
  end
end
