class Event < ApplicationRecord
  #validates :start_date, :title, :description, :price, :location, :duration, presence: true
  #validates :title, length: { minimum: 5, maximum: 140 }
  #validates :description, length: { minimum: 20, maximum: 1000 }
  #validates :price, length: { minimum: 1, maximum: 1000 }
  #validate :start_date_cannot_be_in_the_past
  #validate :duration_positive_and_multiple_of_five

  belongs_to :admin, class_name: "User", foreign_key: "user_id", dependent: :destroy
  has_many :participations
  has_one_attached :event_picture

  def duration_positive_and_multiple_of_five
    errors.add(:duration, "must be postive and multiple of 5") if
      !duration.positive? and (duration % 5 == 0)
  end

  #def start_date_cannot_be_in_the_past
  #  errors.add(:start_date, "can't be in the past") if
  #    !start_date.blank? and start_date < Date.today
  #end
  
end
