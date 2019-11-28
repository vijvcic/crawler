class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :user_jobs
  validates :email, presence: true, uniqueness: true
  validates :username, presence: true, format: { with: /\A[A-Za-z][A-Za-z0-9._-]{2,19}\z/ }
  validates :first_name, presence: true, format: { with: /\A[A-Za-z][A-Za-z0-9._-]{2,19}\z/ }
  validates :last_name, presence: true, format: { with: /\A[A-Za-z][A-Za-z0-9._-]{2,19}\z/ }
end
