class Director < ActiveRecord::Base
	has_many :director_to_movies, dependent: :destroy
	has_many :movies, :through => :director_to_movies
	validates :name, presence: true, uniqueness: true
end
