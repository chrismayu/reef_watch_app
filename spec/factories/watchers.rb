# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :watcher do
    params "MyText"
    temp_name "MyString"
    temp 1
  end
end
