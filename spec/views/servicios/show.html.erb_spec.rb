require 'rails_helper'

RSpec.describe "servicios/show", type: :view do
  before(:each) do
    @servicio = assign(:servicio, Servicio.create!(
      :nombre => "Nombre",
      :descripcion => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Nombre/)
    expect(rendered).to match(/MyText/)
  end
end
