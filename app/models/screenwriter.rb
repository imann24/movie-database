class Screenwriter < ActiveRecord::Base
	has_many :screenwriter_to_movies, dependent: :destroy
   has_many :movies, :through => :screenwriter_to_movies
   validates :name, presence: true, uniqueness: true
end
