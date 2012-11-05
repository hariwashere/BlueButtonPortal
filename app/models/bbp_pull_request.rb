class BbpPullRequest < ActiveRecord::Base
  attr_accessible :email, :uuid, :created_time
  before_save :generate_uuid, :generate_timestamp

  def generate_timestamp
    self.created_time = DateTime.now
  end

  def generate_uuid
    self.uuid = UUIDTools::UUID.timestamp_create.to_s
  end

  def alive?
    ((DateTime.now - created_time.to_datetime) * 1.days) < 30.seconds
  end
end