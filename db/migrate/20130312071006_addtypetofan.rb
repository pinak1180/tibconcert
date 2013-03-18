class Addtypetofan < ActiveRecord::Migration
 def change
   add_column :fans, :type, :string
  end
end
