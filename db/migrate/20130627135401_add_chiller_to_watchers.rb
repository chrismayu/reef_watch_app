class AddChillerToWatchers < ActiveRecord::Migration
  def change
    add_column :watchers, :chiller, :boolean
    add_column :watchers, :skimmer, :boolean
    add_column :watchers, :refuge_light, :boolean
    add_column :watchers, :code, :string
  end
end
