class Clickbait < ActiveModel::Validator
  def validate(record)
    binding.pry
    keywords = ["Won't Believe", "Secret", "Top [number]", "Guess"]
    result = false
    keywords.each do |word|
      if record.title.include?(word)
        result = true
      end
    end
    result
  end
end
