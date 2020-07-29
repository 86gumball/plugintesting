module ControllerMacros
  def login_user
    before :each do
      usr = FactoryBot.create(:user)
      sign_in_as(id: usr.id)
    end
  end
end
