class Product < ApplicationRecord
  validates :title, presence: true, uniqueness:true;
  validates :description, presence: true
  validates :image_url, presence: true
  validates :price, presence: true, numericality: { :greater_than => 0}

#This method uses sql to match whether the text entered by the user in the textbox matches any of the product titles or not.
  def self.search(search)
    where('title LIKE ?', "%#{search}%")
  end
end
