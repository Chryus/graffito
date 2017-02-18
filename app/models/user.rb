class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :graffiti_works, class_name: "Graffiti", foreign_key: "artist_id"
  has_many :upvotes
  has_many :upvoted_graffiti, through: :upvotes, source: :upvotable, source_type: "Graffiti"
end
