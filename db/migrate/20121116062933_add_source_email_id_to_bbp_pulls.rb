class AddSourceEmailIdToBbpPulls < ActiveRecord::Migration
  def up
    add_column :bbp_pulls, :source_email, :string
  end

  def down
    remove_column :bbp_pulls, :source_email
  end
end
