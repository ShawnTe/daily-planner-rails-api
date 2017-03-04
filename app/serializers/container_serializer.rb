class ContainerSerializer < ActiveModel::Serializer
  attributes :id, :time_container, :status, :date, :created_at

  has_many :todos
  belongs_to :brainjuice
end
