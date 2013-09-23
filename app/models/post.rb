class Post < ActiveRecord::Base

  validates :content, presence: true
  validates :uid, presence: true
end
