require 'rails_helper'

RSpec.describe "experiencias/show", type: :view do
  before(:each) do
    @experiencia = assign(:experiencia, Experiencia.create!(
      :nombre => "Nombre",
      :entidad => "Entidad",
      :contratante => "Contratante",
      :unidad_de_negocio => "Unidad De Negocio",
      :ciudad => "Ciudad",
      :valor_contrato => 1,
      :numero_contrato => "Numero Contrato"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Nombre/)
    expect(rendered).to match(/Entidad/)
    expect(rendered).to match(/Contratante/)
    expect(rendered).to match(/Unidad De Negocio/)
    expect(rendered).to match(/Ciudad/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/Numero Contrato/)
  end
end
