class BrainjuiceSerializer < ActiveModel::Serializer
  attributes :id, :name, :status, :created_at
end
