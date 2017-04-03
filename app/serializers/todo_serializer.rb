class TodoSerializer < ActiveModel::Serializer
  attributes :id, :user, :task, :details, :time_estimate, :status, :brainjuice, :container, :created_at, :completed

  belongs_to :user
  belongs_to :brainjuice
  belongs_to :container
end
