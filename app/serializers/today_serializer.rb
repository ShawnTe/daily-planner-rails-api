class TodaySerializer < ActiveModel::Serializer
  attributes :id, :brainjuice, :time_container, :status, :date, :created_at

  belongs_to :brainjuice
end
