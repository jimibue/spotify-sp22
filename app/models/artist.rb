class Artist < ApplicationRecord
    # dependent: :destroy delete all songs for a given artist when a artist is destroyed
    has_many :songs, dependent: :destroy
    
    validates :name, presence: true
    validates :name, uniqueness: true
end
