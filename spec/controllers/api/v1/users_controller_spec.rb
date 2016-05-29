require 'rails_helper'

describe API::V1::UsersController do
  describe "GET #index" do
    it "Display users github" do
      user = User.new("raphael27atm")
      @users = user.search
      expect(response).to have_http_status(:ok)
    end
  end
end
