class Author < ApplicationRecord
	has_many :books
	after_validation :full_name

	before_save :set_full_name

	private

		def set_full_name
			first_name_initial = first_name.slice(0)
			self.full_name = first_name_initial + ". " + last_name
		end
end
