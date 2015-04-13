require 'rails_helper'

RSpec.describe "Trocaentreusuarios", :type => :request do
  describe "GET /trocaentreusuarios" do
    it "works! (now write some real specs)" do
      get trocaentreusuarios_path
      expect(response).to have_http_status(200)
    end
  end
end
