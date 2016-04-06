require 'rails_helper'

RSpec.describe "productos/index", type: :view do
  before(:each) do
    assign(:productos, [
      Producto.create!(
        :nombre => "Nombre",
        :precio => "9.99",
        :descripcion => "MyText",
        :user => nil
      ),
      Producto.create!(
        :nombre => "Nombre",
        :precio => "9.99",
        :descripcion => "MyText",
        :user => nil
      )
    ])
  end

  it "renders a list of productos" do
    render
    assert_select "tr>td", :text => "Nombre".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
