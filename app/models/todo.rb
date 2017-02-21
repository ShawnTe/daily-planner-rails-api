class Todo < ApplicationRecord
  belongs_to :user
  belongs_to :brainjuice

  validates :task, presence: true
  validates :time_estimate, presence: true
  validates :brainjuice, presence: true

end
