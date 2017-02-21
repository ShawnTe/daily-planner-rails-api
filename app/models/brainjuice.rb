class Brainjuice < ApplicationRecord
  validates :name, presence: true
  has_many :todos
  has_many :todays
end
