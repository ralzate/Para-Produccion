require 'rails_helper'

RSpec.describe "experiencias/index", type: :view do
  before(:each) do
    assign(:experiencias, [
      Experiencia.create!(
        :nombre => "Nombre",
        :entidad => "Entidad",
        :contratante => "Contratante",
        :unidad_de_negocio => "Unidad De Negocio",
        :ciudad => "Ciudad",
        :valor_contrato => 1,
        :numero_contrato => "Numero Contrato"
      ),
      Experiencia.create!(
        :nombre => "Nombre",
        :entidad => "Entidad",
        :contratante => "Contratante",
        :unidad_de_negocio => "Unidad De Negocio",
        :ciudad => "Ciudad",
        :valor_contrato => 1,
        :numero_contrato => "Numero Contrato"
      )
    ])
  end

  it "renders a list of experiencias" do
    render
    assert_select "tr>td", :text => "Nombre".to_s, :count => 2
    assert_select "tr>td", :text => "Entidad".to_s, :count => 2
    assert_select "tr>td", :text => "Contratante".to_s, :count => 2
    assert_select "tr>td", :text => "Unidad De Negocio".to_s, :count => 2
    assert_select "tr>td", :text => "Ciudad".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Numero Contrato".to_s, :count => 2
  end
end
