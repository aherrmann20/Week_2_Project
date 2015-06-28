class Drug < ActiveRecord::Base
	has_many :comments, dependent: :destroy
	validates :name, :adult_dose, :route, presence: true
end
