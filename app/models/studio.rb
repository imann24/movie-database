class Studio < ActiveRecord::Base
	has_many :studio_to_movies, dependent: :destroy
   has_many :movies, :through => :studio_to_movies
   validates :name, presence: true, uniqueness: true
end
