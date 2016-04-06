# == Schema Information
#
# Table name: servicios
#
#  id                  :integer          not null, primary key
#  nombre              :string
#  descripcion         :text
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#  imagen_file_name    :string
#  imagen_content_type :string
#  imagen_file_size    :integer
#  imagen_updated_at   :datetime
#

require "rails_helper"

RSpec.describe ServiciosController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/servicios").to route_to("servicios#index")
    end

    it "routes to #new" do
      expect(:get => "/servicios/new").to route_to("servicios#new")
    end

    it "routes to #show" do
      expect(:get => "/servicios/1").to route_to("servicios#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/servicios/1/edit").to route_to("servicios#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/servicios").to route_to("servicios#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/servicios/1").to route_to("servicios#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/servicios/1").to route_to("servicios#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/servicios/1").to route_to("servicios#destroy", :id => "1")
    end

  end
end
