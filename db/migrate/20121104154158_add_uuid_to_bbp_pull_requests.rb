class AddUuidToBbpPullRequests < ActiveRecord::Migration
  def up
    add_column :bbp_pull_requests, :uuid, :string
  end

  def down
    remove_column :bbp_pull_requests, :uuid
  end
end
