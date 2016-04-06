# == Schema Information
#
# Table name: experiencias
#
#  id                :integer          not null, primary key
#  nombre            :string
#  entidad           :string
#  contratante       :string
#  unidad_de_negocio :string
#  ciudad            :string
#  fecha_inicio      :date
#  fecha_terminacion :date
#  valor_contrato    :integer
#  numero_contrato   :string
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#

require "rails_helper"

RSpec.describe ExperienciasController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/experiencias").to route_to("experiencias#index")
    end

    it "routes to #new" do
      expect(:get => "/experiencias/new").to route_to("experiencias#new")
    end

    it "routes to #show" do
      expect(:get => "/experiencias/1").to route_to("experiencias#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/experiencias/1/edit").to route_to("experiencias#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/experiencias").to route_to("experiencias#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/experiencias/1").to route_to("experiencias#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/experiencias/1").to route_to("experiencias#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/experiencias/1").to route_to("experiencias#destroy", :id => "1")
    end

  end
end
