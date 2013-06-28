class AddCodeToAlarmCodes < ActiveRecord::Migration
  def change
    add_column :alarm_codes, :code, :integer
  end
end
