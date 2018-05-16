class Director < ApplicationRecord
  has_many :movies
  def director_name
    "#{first_name}"
  end
end
