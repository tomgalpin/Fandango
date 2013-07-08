class Movie < ActiveRecord::Base
  attr_accessible :theater_id, :title

  belongs_to :theater

  validates :title, :presence => true, :uniqueness => true
end
