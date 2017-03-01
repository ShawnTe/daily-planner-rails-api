class BrainjuiceSerializer < ActiveModel::Serializer
  attributes :id, :name, :status, :created_at

  has_many :todos
end
