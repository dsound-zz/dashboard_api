class OutageSerializer < ActiveModel::Serializer
  attributes :id, :start_time, :end_time, :is_recurring, :frequency, :reason, :service_id 
end
