class Graffiti < ApplicationRecord
  belongs_to :artist, :class_name => "User"
end
