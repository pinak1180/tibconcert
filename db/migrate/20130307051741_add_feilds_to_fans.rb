class AddFeildsToFans < ActiveRecord::Migration
  def change
   add_column :fans, :fan_name, :string
   add_column :fans,:dob,:date
   add_column :fans, :first_name, :string
   add_column :fans, :last_name, :string
   add_column :fans, :country, :string
   add_column :fans, :city, :string
   add_column :fans, :zip, :integer
   add_column :fans, :latitude, :integer
   add_column :fans, :longitude,:integer
  end
end
