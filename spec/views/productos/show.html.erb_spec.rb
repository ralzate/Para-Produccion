require 'rails_helper'

RSpec.describe "productos/show", type: :view do
  before(:each) do
    @producto = assign(:producto, Producto.create!(
      :nombre => "Nombre",
      :precio => "9.99",
      :descripcion => "MyText",
      :user => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Nombre/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(//)
  end
end
