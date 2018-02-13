# Article Model
class Article < ApplicationRecord
	# validates the title and description fields in the Articles tables.
	validates :title, presence: true, length: { minimum:3, maximum: 50 }
	validates :description, presence: true, length: { minimum:3, maximum: 50 }
end
