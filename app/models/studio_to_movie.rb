class StudioToMovie < ActiveRecord::Base
	belongs_to :studio	
	belongs_to :movie
end
