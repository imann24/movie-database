class Movie < ActiveRecord::Base
	has_many :screenwriter_to_movies, dependent: :destroy
	has_many :studio_to_movies, dependent: :destroy
	has_many :actor_to_movies, dependent: :destroy
	has_many :director_to_movies, dependent: :destroy
   	has_many :screenwriters, :through => :screenwriter_to_movies
   	has_many :actors, :through => :actor_to_movies
   	has_many :directors, :through => :director_to_movies
   	has_many :screenwriters, :through => :screenwriter_to_movies
   	has_many :studios, :through => :studio_to_movies

   	validates :title, :rating, :length, :genre, :score, :synopsis, presence: true
end
