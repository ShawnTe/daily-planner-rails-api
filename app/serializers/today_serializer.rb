class TodaySerializer < ActiveModel::Serializer
  attributes :id, :time_container, :status, :date, :created_at

end
