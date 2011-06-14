class Page < ActiveRecord::Base
  validates :title, :presence => true
  validates :permalink, :uniqueness => true
  
  scope :published, where(:published => true)
end
