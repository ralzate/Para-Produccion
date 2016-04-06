FactoryGirl.define do
  factory :producto do
    nombre "MyString"
    precio "9.99"
    descripcion "MyText"
    association :user, factory: :user
  end
end
