class AddPasswordToVenue < ActiveRecord::Migration
  def change
   add_column :venues, :password, :string
  end
end
