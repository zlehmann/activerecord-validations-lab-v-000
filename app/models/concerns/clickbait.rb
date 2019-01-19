class Clickbait < ActiveModel::Validator
  def validate(record)
    keywords = ["Won't Believe", "Secret", "Top [number]", "Guess"]
    result = false
    if record.title != nil
      keywords.each do |word|
        binding.pry
        if record.title.include?(word)
          result = true
        end
      end
    end
    result
  end
end
