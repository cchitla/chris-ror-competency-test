class Article < ApplicationRecord
  belongs_to :user 
  belongs_to :category

  validates_presence_of :category_id
end
