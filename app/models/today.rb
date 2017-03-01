class Today < ApplicationRecord
  belongs_to :brainjuice
  has_many :todos
end
