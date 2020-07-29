require 'rails_helper'
require 'clearance/rspec'

RSpec.describe PostsController, type: :controller do
  context "When using redirect methods" do
    let(:valid_attributes) {
      { :title => "Test title!", :body => "This is a test description", :user_id => usr.id }
    }

    let(:valid_session) { {} }

    before :each do
      usr = User.create(email: "user0@example.com", password: "123456", username: "user0")
      sign_in_as(id: usr.id)
    end
    # post = Post.create valid_attributes

    describe "GET #index" do
      it "should return a success response" do
        get :index, params: {}, session: valid_session
        expect(response).to be_successful
      end
    end

    describe "GET #user_posts" do
      it "should return a success response" do
        get :user_posts, params: {}, session: valid_session
        expect(response).to be_successful
      end
    end

    describe "GET #new" do
      it "should return a success response" do
        get :new, params: {}, session: valid_session
        expect(response).to be_successful
      end
    end
  end
end
