require 'rails_helper'

RSpec.describe "productos/new", type: :view do
  before(:each) do
    assign(:producto, Producto.new(
      :nombre => "MyString",
      :precio => "9.99",
      :descripcion => "MyText",
      :user => nil
    ))
  end

  it "renders new producto form" do
    render

    assert_select "form[action=?][method=?]", productos_path, "post" do

      assert_select "input#producto_nombre[name=?]", "producto[nombre]"

      assert_select "input#producto_precio[name=?]", "producto[precio]"

      assert_select "textarea#producto_descripcion[name=?]", "producto[descripcion]"

      assert_select "input#producto_user_id[name=?]", "producto[user_id]"
    end
  end
end
