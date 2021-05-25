class CreateParticipations < ActiveRecord::Migration[6.1]
  def change
    create_table :participations do |t|
      t.belongs_to :event, null: false, foreign_key: true
      t.references :user, foreign_key: true
      t.string :stripe_customer_id
      t.timestamps
    end
  end
end
