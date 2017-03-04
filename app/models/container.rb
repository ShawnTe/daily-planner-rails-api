class Container < ApplicationRecord
  has_many :todos
  belongs_to :brainjuice

  validates_presence_of :brainjuice
end
