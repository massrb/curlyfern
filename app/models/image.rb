class Image < ApplicationRecord
  has_one_attached :image_data do |attachable|
    attachable.variant :thumb, resize_to_limit: [100, 100],
    preprocessed: true
  end

	def self.ransackable_attributes(auth_object = nil)
    ["created_at", "description", "id", "name", "price", "updated_at"]
  end

	def self.ransackable_associations(auth_object = nil)
		["created_at", "description", "id", "name", "price", "updated_at"]
	end

  validates :image_data, attached: true, size: { between: 1.kilobyte..1.megabytes , message: 'File size is too big or is not acceptable' }
  validate :validate_number_of_entries, on: :create

 private

	def validate_number_of_entries
    errors.add(:image_data, 'Maximum number of entries has been exceeded') if self.class.count > 200
 	end 

end
