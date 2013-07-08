class User < ActiveRecord::Base
  has_secure_password

  attr_accessible :password, :username, :password_confirmation, :theater_id

  belongs_to :theater

  validates :username, :presence => true, :uniqueness => true
end
