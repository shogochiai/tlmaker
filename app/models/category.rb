class Category < ActiveRecord::Base
  has_many :timelines
  belongs_to :user

  attr_accessible :name
end
