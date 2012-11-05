class CreateBbpPullTable < ActiveRecord::Migration
 def up
    create_table :bbp_pulls do |pull|
      pull.string :first_name
      pull.string :last_name
      pull.string :destination_email
    end
  end

  def down
    drop_table :bbp_pulls
  end
end
