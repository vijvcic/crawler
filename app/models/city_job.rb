class CityJob < ApplicationRecord
  belongs_to :jobs
  belongs_to :cities
end
