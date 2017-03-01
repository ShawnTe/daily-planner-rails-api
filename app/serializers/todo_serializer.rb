class TodoSerializer < ActiveModel::Serializer
  attributes :id, :user, :task, :details, :time_estimate, :status, :brainjuice, :today, :created_at

  belongs_to :user
  belongs_to :brainjuice
  belongs_to :today
end
