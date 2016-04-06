require 'rails_helper'

RSpec.describe "quienes_somos/new", type: :view do
  before(:each) do
    assign(:quien_somos, QuienSomos.new(
      :mision => "MyText",
      :vision => "MyText",
      :politica_integral => "MyText",
      :valores_corporativos => "MyText",
      :historia => "MyText"
    ))
  end

  it "renders new quien_somos form" do
    render

    assert_select "form[action=?][method=?]", quienes_somos_path, "post" do

      assert_select "textarea#quien_somos_mision[name=?]", "quien_somos[mision]"

      assert_select "textarea#quien_somos_vision[name=?]", "quien_somos[vision]"

      assert_select "textarea#quien_somos_politica_integral[name=?]", "quien_somos[politica_integral]"

      assert_select "textarea#quien_somos_valores_corporativos[name=?]", "quien_somos[valores_corporativos]"

      assert_select "textarea#quien_somos_historia[name=?]", "quien_somos[historia]"
    end
  end
end
