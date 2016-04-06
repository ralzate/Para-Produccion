require 'rails_helper'

RSpec.describe "quienes_somos/edit", type: :view do
  before(:each) do
    @quien_somos = assign(:quien_somos, QuienSomos.create!(
      :mision => "MyText",
      :vision => "MyText",
      :politica_integral => "MyText",
      :valores_corporativos => "MyText",
      :historia => "MyText"
    ))
  end

  it "renders the edit quien_somos form" do
    render

    assert_select "form[action=?][method=?]", quien_somos_path(@quien_somos), "post" do

      assert_select "textarea#quien_somos_mision[name=?]", "quien_somos[mision]"

      assert_select "textarea#quien_somos_vision[name=?]", "quien_somos[vision]"

      assert_select "textarea#quien_somos_politica_integral[name=?]", "quien_somos[politica_integral]"

      assert_select "textarea#quien_somos_valores_corporativos[name=?]", "quien_somos[valores_corporativos]"

      assert_select "textarea#quien_somos_historia[name=?]", "quien_somos[historia]"
    end
  end
end
