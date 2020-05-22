class Movie < ApplicationRecord
  belongs_to :studio
  validates_presence_of :title, :creation_year, :genre
end
