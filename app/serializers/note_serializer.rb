class NoteSerializer < ActiveModel::Serializer
  attributes :id, :entry, :is_public, :user_id, :service_id
end
