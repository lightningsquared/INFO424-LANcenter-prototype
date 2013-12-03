class Address < ActiveRecord::Base
  attr_accessible :addressable_id, :addressable_type, :city, :line1, :line2, :postal_code, :region
  belongs_to :addressable, :polymorphic => true
end
