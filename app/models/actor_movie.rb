class ActorMovie < ApplicationRecord
  has_many :actor_id
  belongs_to :movie_id
end
