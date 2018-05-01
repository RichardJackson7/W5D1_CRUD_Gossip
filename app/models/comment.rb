class Comment < ApplicationRecord
	
	belongs_to :gossip
	validates	:anonymous_commentator, presence: true 
	validates	:body, presence: true 

end