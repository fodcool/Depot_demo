class Product < ApplicationRecord
  validates :title, :description, :image_url, presence: { message: "字段不能为空"}
  validates :title, uniqueness: true, allow_blank: true, length: { minimum: 10, message: "不能少于10个字符"}
  validates :price, numericality: { greater_than_or_equal_to: 0.01 }  #确认价格是否有效
  validates :image_url, allow_blank: true, format: {
    with: %r{\.(gif|jpg|png)\Z}i,
    message: 'must be a URL for GIF, JPG, PNG'
  }
end
