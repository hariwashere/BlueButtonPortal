class AddTimestampToBbpPullRequests < ActiveRecord::Migration
  def up
    add_column :bbp_pull_requests, :created_time, :timestamp
  end

  def down
    remove_column :bbp_pull_requests, :created_time
  end
end
