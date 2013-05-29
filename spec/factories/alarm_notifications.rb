# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :alarm_notification do
    tank_name "MyString"
    alarm_level "MyString"
    alert_owner ""
    message_part1 "MyText"
    message_part2 "MyText"
  end
end
