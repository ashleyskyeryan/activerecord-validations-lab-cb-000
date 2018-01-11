class Post < ActiveRecord::Base
  validates :title, presence: true
  validates :content, length: { is: 250 }
  validates :summary, length: { maximum: 250 }
  validates :category, inclusion: { in: %w(Fiction Non-Fiction)}
  validate :title_must_be_clickbait

  def title_must_be_clickbait
    if title
      if !title.include?("Won't Believe") &&
        !title.include?("Secret") &&
        !title.include?("Top 3") &&
        !title.include?("Guess")
        errors.add(:title, "must contain clickbait!")
  end
end
end

end
