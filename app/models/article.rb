class Article < ApplicationRecord
	has_many :details, dependent: :destroy
	validates :title, presence: true,
				length: { minimum: 5 }

end
