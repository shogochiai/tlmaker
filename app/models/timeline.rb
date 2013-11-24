class Timeline < ActiveRecord::Base
  attr_accessible :name, :top_image, :url

  belongs_to :user
end
