require "rails_helper"

RSpec.describe TrocaentreusuariosController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/trocaentreusuarios").to route_to("trocaentreusuarios#index")
    end

    it "routes to #new" do
      expect(:get => "/trocaentreusuarios/new").to route_to("trocaentreusuarios#new")
    end

    it "routes to #show" do
      expect(:get => "/trocaentreusuarios/1").to route_to("trocaentreusuarios#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/trocaentreusuarios/1/edit").to route_to("trocaentreusuarios#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/trocaentreusuarios").to route_to("trocaentreusuarios#create")
    end

    it "routes to #update" do
      expect(:put => "/trocaentreusuarios/1").to route_to("trocaentreusuarios#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/trocaentreusuarios/1").to route_to("trocaentreusuarios#destroy", :id => "1")
    end

  end
end
