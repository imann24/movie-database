class DirectorToMovie < ActiveRecord::Base
	belongs_to :movie
	belongs_to :director
end
