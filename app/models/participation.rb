class Participation < ApplicationRecord
  belongs_to :event
  belongs_to :attendee, class_name: "User", foreign_key: "user_id", dependent: :destroy
  #after_create :participation_send
  
  #def participation_send
  #  ParticipationMailer.participate_email(self.attendee, self).deliver_now
  #end
end
