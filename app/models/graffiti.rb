class Graffiti < ApplicationRecord
  belongs_to :artist, :class_name => "User"
  has_many :upvotes, as: :upvotable
end
