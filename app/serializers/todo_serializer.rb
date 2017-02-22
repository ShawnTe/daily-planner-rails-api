class TodoSerializer < ActiveModel::Serializer
  attributes :id, :user, :task, :details, :time_estimate, :status, :brainjuice, :created_at

  belongs_to :user
  belongs_to :brainjuice
end
