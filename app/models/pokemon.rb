class Pokemon < ApplicationRecord
	has_and_belongs_to_many :types
	validates :name, presence: true, length: { minimum: 3, maximum: 12 }, uniqueness: { case_sensitive: false }

  def to_param
  	name
  end
end

