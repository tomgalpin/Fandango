class Theater < ActiveRecord::Base
  attr_accessible :name, :id

  has_many :movies
  has_many :seats
  has_many :users
  has_many :seats

  validates :name, :presence => true
end
