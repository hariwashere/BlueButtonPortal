class AddUseForResearchToBbpPulls < ActiveRecord::Migration
  def up
    add_column :bbp_pulls, :use_for_research, :boolean
  end

  def down
    remove_column :bbp_pulls, :use_for_research
  end
end
