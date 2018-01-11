class Post < ActiveRecord::Base
  validates :title, presence: true
  validates :content, length: { is: 250 }
  validates :summary, length: { maximum: 250 }
end
