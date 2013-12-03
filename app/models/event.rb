class Event < ActiveRecord::Base
  attr_accessible :description, :end_time, :name, :organization_id, :start_time, :address_attributes
  has_many :attendees
  has_one :address, :as => :addressable
  accepts_nested_attributes_for :address
end
