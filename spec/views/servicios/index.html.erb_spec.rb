require 'rails_helper'

RSpec.describe "servicios/index", type: :view do
  before(:each) do
    assign(:servicios, [
      Servicio.create!(
        :nombre => "Nombre",
        :descripcion => "MyText"
      ),
      Servicio.create!(
        :nombre => "Nombre",
        :descripcion => "MyText"
      )
    ])
  end

  it "renders a list of servicios" do
    render
    assert_select "tr>td", :text => "Nombre".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
