class Post < ActiveRecord::Base
  validates :title, presence: true
  validates :content, length: { minimum: 10 }
  validates :summary, length: { maximum: 50 }
  validates :category, inclusion: { in: %w(Fiction Non-Fiction) }
  validate :clickbait

  def clickbait
    keywords = ["Won't Believe", "Secrete", "Top [number]", "Guess"]
    result = false
    keywords.each do |word|
      if record.title.include?(word)
        result = true
      end
    end
    result
  end
end
