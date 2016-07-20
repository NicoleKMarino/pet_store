class User < ActiveRecord::Base
  has_many :stores
  has_secure_password
  validates :password, :length => {:minimum => 6 , :message => "Must 6 characters or more"}
validates :username, presence: true,
                     uniqueness: true

enum role: %w(default owner)
end
