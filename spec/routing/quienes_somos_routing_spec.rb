# == Schema Information
#
# Table name: quienes_somos
#
#  id                   :integer          not null, primary key
#  mision               :text
#  vision               :text
#  politica_integral    :text
#  valores_corporativos :text
#  historia             :text
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#

require "rails_helper"

RSpec.describe QuienesSomosController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/quienes_somos").to route_to("quienes_somos#index")
    end

    it "routes to #new" do
      expect(:get => "/quienes_somos/new").to route_to("quienes_somos#new")
    end

    it "routes to #show" do
      expect(:get => "/quienes_somos/1").to route_to("quienes_somos#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/quienes_somos/1/edit").to route_to("quienes_somos#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/quienes_somos").to route_to("quienes_somos#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/quienes_somos/1").to route_to("quienes_somos#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/quienes_somos/1").to route_to("quienes_somos#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/quienes_somos/1").to route_to("quienes_somos#destroy", :id => "1")
    end

  end
end
