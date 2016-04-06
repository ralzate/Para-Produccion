require 'rails_helper'

RSpec.describe "experiencias/new", type: :view do
  before(:each) do
    assign(:experiencia, Experiencia.new(
      :nombre => "MyString",
      :entidad => "MyString",
      :contratante => "MyString",
      :unidad_de_negocio => "MyString",
      :ciudad => "MyString",
      :valor_contrato => 1,
      :numero_contrato => "MyString"
    ))
  end

  it "renders new experiencia form" do
    render

    assert_select "form[action=?][method=?]", experiencias_path, "post" do

      assert_select "input#experiencia_nombre[name=?]", "experiencia[nombre]"

      assert_select "input#experiencia_entidad[name=?]", "experiencia[entidad]"

      assert_select "input#experiencia_contratante[name=?]", "experiencia[contratante]"

      assert_select "input#experiencia_unidad_de_negocio[name=?]", "experiencia[unidad_de_negocio]"

      assert_select "input#experiencia_ciudad[name=?]", "experiencia[ciudad]"

      assert_select "input#experiencia_valor_contrato[name=?]", "experiencia[valor_contrato]"

      assert_select "input#experiencia_numero_contrato[name=?]", "experiencia[numero_contrato]"
    end
  end
end
