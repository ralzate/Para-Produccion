require 'rails_helper'

RSpec.describe "quienes_somos/index", type: :view do
  before(:each) do
    assign(:quienes_somos, [
      QuienSomos.create!(
        :mision => "MyText",
        :vision => "MyText",
        :politica_integral => "MyText",
        :valores_corporativos => "MyText",
        :historia => "MyText"
      ),
      QuienSomos.create!(
        :mision => "MyText",
        :vision => "MyText",
        :politica_integral => "MyText",
        :valores_corporativos => "MyText",
        :historia => "MyText"
      )
    ])
  end

  it "renders a list of quienes_somos" do
    render
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
