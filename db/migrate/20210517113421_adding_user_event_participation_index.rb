class AddingUserEventParticipationIndex < ActiveRecord::Migration[6.1]
  def change
    add_reference :events, :user, index: true
  end
end
