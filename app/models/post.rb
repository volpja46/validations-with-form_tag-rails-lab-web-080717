class Post < ActiveRecord::Base
  validates :title, :content, presence: true
  validates :content, length: {minimum: 100}
  validates :category, inclusion: { in: %w(Non-Fiction Fiction),
  message:"not a valid category"}
end
