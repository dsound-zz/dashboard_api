class ServiceSerializer < ActiveModel::Serializer
  attributes :id, :name, :is_down
end
