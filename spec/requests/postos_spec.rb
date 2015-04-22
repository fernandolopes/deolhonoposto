require 'rails_helper'

RSpec.describe "Postos", type: :request do
  describe "GET /postos" do
    it "works! (now write some real specs)" do
      get postos_path
      expect(response).to have_http_status(200)
    end
  end
end
