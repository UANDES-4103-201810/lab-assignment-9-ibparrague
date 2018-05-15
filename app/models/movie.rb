class Movie < ApplicationRecord
  belongs_to :director_id
  belongs_to :address_id
  has_many :categories
end