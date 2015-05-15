class Entry < ActiveRecord::Base
	belongs_to :project
	validations :date, presence: true
	validations :hours, presence: true, numericality: true
	validations :minutes, presence: true, numericality: true
	validates_associated :project
end
