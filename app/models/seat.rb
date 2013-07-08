class Seat < ActiveRecord::Base
  attr_accessible :location, :theater_id

  belongs_to :theater

  validates :location, :presence => true, :uniqueness => true
end
