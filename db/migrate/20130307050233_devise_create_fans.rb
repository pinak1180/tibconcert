class DeviseCreateFans < ActiveRecord::Migration
  def self.up
    create_table(:fans) do |t|
      t.database_authenticatable :null => false
      t.confirmable
      t.recoverable
      t.rememberable
      t.trackable
      # t.lockable :lock_strategy => :failed_attempts, :unlock_strategy => :both

      t.timestamps
    end

    add_index :fans, :email,                :unique => true
    add_index :fans, :confirmation_token,   :unique => true
    add_index :fans, :reset_password_token, :unique => true
    # add_index :fans, :unlock_token,         :unique => true
  end

  def self.down
    drop_table :fans
  end
end
