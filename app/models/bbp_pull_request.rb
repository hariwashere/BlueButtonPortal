class BbpPullRequest < ActiveRecord::Base
  attr_accessible :email, :uuid

  def generate_uuid
    self.uuid = UUIDTools::UUID.timestamp_create.to_s
    return self
  end
end