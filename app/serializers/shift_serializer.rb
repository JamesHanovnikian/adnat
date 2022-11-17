class ShiftSerializer < ActiveModel::Serializer
  attributes :id,
    :start,
    :finish,
    :break_length
  belongs_to :organization
end
