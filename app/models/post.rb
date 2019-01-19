class Post < ActiveRecord::Base
  validates :title, presence: true
  validates :content, length: { minimum: 10 }
  validates :summary, length: { maximum: 50 }
  validates :category, inclusion: { in: %w(Fiction Non-Fiction)}
  validates :title, inclusion: { %w(You Won't Believe These True Facts) }
end
