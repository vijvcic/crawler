class Job < ApplicationRecord
  has_many :user_jobs
  has_many :city_jobs
end
