class CreateAlarmCodes < ActiveRecord::Migration
  def change
    create_table :alarm_codes do |t|
      t.string :tank_name
      t.string :alarm_code
      t.text :message

      t.timestamps
    end
  end
end
