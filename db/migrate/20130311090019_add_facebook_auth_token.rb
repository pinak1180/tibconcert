class AddFacebookAuthToken < ActiveRecord::Migration
 def change
   add_column :fans, :fb_auth_token, :string
  end
end
