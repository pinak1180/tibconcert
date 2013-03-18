class CreateBackStageRegistrations < ActiveRecord::Migration
  def change
    create_table :back_stage_registrations do |t|
      t.string :email
      t.string :fb_auth_token
      t.string :type

      t.timestamps
    end
  end
end
