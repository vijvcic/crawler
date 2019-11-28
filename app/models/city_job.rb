class CityJob < ApplicationRecord
  belongs_to :job
  belongs_to :city
end
