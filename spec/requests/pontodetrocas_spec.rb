require 'rails_helper'

RSpec.describe "Pontodetrocas", :type => :request do
  describe "GET /pontodetrocas" do
    it "works! (now write some real specs)" do
      get pontodetrocas_path
      expect(response).to have_http_status(200)
    end
  end
end
