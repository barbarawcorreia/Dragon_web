class DragonBase < ActiveRecord::Base
  validates :name, presence: true
  validates :owner_name, presence: true
end
