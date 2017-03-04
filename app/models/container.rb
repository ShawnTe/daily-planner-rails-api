class Container < ApplicationRecord
  has_many :todos
  belongs_to :brainjuice
end
