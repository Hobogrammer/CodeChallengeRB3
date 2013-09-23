class User < ActiveRecord::Base
  has_many :posts

  validates :handle, presence: true
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true
end
