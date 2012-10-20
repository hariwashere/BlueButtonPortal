class CreateBbpPullRequest < ActiveRecord::Migration
  def up
    create_table :bbp_pull_requests do |request|
      request.string :email
    end
  end

  def down
    drop_table :bbp_pull_requests
  end
end
