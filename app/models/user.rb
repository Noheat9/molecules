class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  #after_create :welcome_send
  has_many :participations
  has_many :events
  has_one_attached :avatar
  validates :email, presence: true,uniqueness: {case_sensitive: false},
  length: {minimum:3,maximum:25},format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i}

  #def welcome_send
  #  UserMailer.welcome_email(self).deliver_now
  #end
end
