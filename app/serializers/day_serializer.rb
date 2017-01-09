class DaySerializer < ActiveModel::Serializer
  attributes :id, :expiration_date, :thoughts, :errors
end
