class Showing < ActiveRecord::Base
  attr_accessible :price, :time, :theater_id

  belongs_to :theater

  validates :price, :presence => true
  validates :time, :presence => true
end
