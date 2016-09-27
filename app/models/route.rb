class Route < ApplicationRecord
  validates :name, presence: true,
                     length: { minimum: 5 }

  has_many :railway_stations_routes
  has_many :railway_stations, through: :railway_stations_routes
end
