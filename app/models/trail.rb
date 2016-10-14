class Trail < ActiveRecord::Base
  # Remember to create a migration!
  has_many :hikes
  has_many :users, :through => :hikes
end
