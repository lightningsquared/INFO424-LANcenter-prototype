class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string :line1
      t.string :line2
      t.string :city
      t.string :region
      t.string :postal_code
      t.references :addressable, :polymorphic => true

      t.timestamps
    end

    add_index :addresses, [:addressable_type, :addressable_id], :unique => true
  end
end
