class CreateAttendees < ActiveRecord::Migration
  def change
    create_table :attendees do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.date :date_of_birth
      t.string :attendee_type
      t.string :handle
      t.integer :event_id

      t.timestamps
    end
  end
end
