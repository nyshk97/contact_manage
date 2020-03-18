require 'rails_helper'

RSpec.describe "Sessions", type: :request do
  describe "GET /sessions" do
    it "ログインしていないとリダイレクトされる" do
      get root_path
      expect(response).to redirect_to(login_path)
    end
  end
end
