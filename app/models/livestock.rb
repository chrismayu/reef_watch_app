class Livestock < ActiveRecord::Base
  attr_accessible :common_name, :description, :image, :livestock_type, :scientific_name
end
