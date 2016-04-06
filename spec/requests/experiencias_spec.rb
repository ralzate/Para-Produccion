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

require 'rails_helper'

RSpec.describe "Experiencias", type: :request do
  describe "GET /experiencias" do
    it "works! (now write some real specs)" do
      get experiencias_path
      expect(response).to have_http_status(200)
    end
  end
end
