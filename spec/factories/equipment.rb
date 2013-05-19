# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :equipment do
    description "MyText"
    equipment_name "MyString"
    equipment_type "MyString"
    image "MyString"
  end
end
