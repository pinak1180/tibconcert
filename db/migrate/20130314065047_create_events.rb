class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :event_name
      t.string :artist
      t.string :description
      t.string :genere
       t.has_attached_file :avatar
      t.integer :ticket_rate_min
      t.integer :ticket_rate_max
      t.string :ticket_master_link

      t.timestamps
    end
  end
end
