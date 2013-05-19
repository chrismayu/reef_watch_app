# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :livestock do
    description "MyText"
    common_name "MyString"
    scientific_name "MyString"
    image "MyString"
    livestock_type "MyString"
  end
end
