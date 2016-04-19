class Actor < ActiveRecord::Base
	has_many :actor_to_movies, dependent: :destroy
	has_many :movies, :through => :actor_to_movies
	validates :name, presence: true, uniqueness: true
end
