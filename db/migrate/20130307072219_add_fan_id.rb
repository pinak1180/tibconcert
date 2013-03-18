class AddFanId < ActiveRecord::Migration
  def change
   add_column :authentication_tokens, :fan_id, :string
  end
end
