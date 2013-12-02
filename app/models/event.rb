class Event < ActiveRecord::Base
  attr_accessible :description, :end_time, :name, :organization_id, :start_time
  # has_many :attendees
end
