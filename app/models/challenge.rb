class Challenge < ActiveRecord::Base
	validates :title, presence: true 
	validates :body, presence: true 
	validates :prize, presence: true
end
