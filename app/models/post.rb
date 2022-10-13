class Post < ApplicationRecord
  validates_presence_of :title

  validates :content, length: {minimum: 250}

  validates :summary, length: {maximum: 250}

 validates :category, inclusion: { in: ['Fiction', 'Non-Fiction'] }

 validate :clickbate

 Titles = [/Won't Believe/i, /Secret/i, /Top \d/i, /Guess/i]

 def clickbate
  if Titles.none? {|char| char.match(title)}
    errors.add(:title, "its not clickbait")
  end
 end

end
