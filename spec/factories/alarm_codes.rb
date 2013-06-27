# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :alarm_code do
    tank_name "MyString"
    alarm_code "MyString"
    message "MyText"
  end
end
