module Spree
  class Page < ActiveRecord::Base
    attr_accessible :title, :meta_keywords, :meta_description, :body, :permalink, :published
    validates :title, :presence => true
    validates :permalink, :uniqueness => true
  
    scope :published, where(:published => true)

    paginates_per 50
  end
end
