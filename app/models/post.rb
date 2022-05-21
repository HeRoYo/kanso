class Post < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :genre

  with_options presence: true do
    validates :title, length: { maximum: 20 } # 20文字以下
    validates :text, length: { maximum: 10000 } #１万文字以下
  end

  validates :genre_id, numericality: { other_than: 1, message: "can't be blank"} 
end
