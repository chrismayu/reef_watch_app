# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :reef_tank do
    tank_name "MyString"
    setup_date "2013-05-16"
    last_update "2013-05-16"
    current_temp 1
    temp_name "MyString"
  end
end
