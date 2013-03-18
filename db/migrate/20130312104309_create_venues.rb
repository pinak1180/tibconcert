class CreateVenues < ActiveRecord::Migration
  def change
    create_table :venues do |t|
      t.string :name
      t.string :country
      t.string :city
      t.string :state

      t.timestamps
    end
  end
end
