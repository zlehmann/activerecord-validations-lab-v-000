class Clickbait < ActiveRecord::Base
  keywords = ["Won't Believe", "Secret", "Top [number]", "Guess"]
  result = false
  keywords.each do |word|
    if self.title.include?(word)
      result = true
    end
  end
  result
end
