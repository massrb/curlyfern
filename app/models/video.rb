class Video < ApplicationRecord
  mount_uploader :file, VideoUploader
  validates :title, presence: true

  def self.ransackable_attributes(auth_object = nil)
    ["created_at", "description", "id", "file", "title", "updated_at"]
  end

  def self.ransackable_associations(auth_object = nil)
    ["created_at", "description", "id", "file", "title", "updated_at"]		
  end
end
