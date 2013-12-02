class Attendee < ActiveRecord::Base
  attr_accessible :attendee_type, :date_of_birth, :email, :event_id, :first_name, :handle, :last_name
  # belongs_to :event
  # accepts_nested_attributes_for :address
end
