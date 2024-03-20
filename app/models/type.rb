class Type < ApplicationRecord
	has_and_belongs_to_many :pokemon
	validates :name, presence: true, uniqueness: { case_sensitive: false }

	def to_param
    name
  end
end
