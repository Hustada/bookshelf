class DropAdminsSessionsTable < ActiveRecord::Migration
  def change
    drop_table :admin_sessions
  end
end
