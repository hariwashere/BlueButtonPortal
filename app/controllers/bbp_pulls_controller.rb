class BbpPullsController < ApplicationController
  def new
    uuid = params[:uuid]
    bbp_pull_request = BbpPullRequest.find_by_uuid(uuid)
    if ((bbp_pull_request == nil) || !bbp_pull_request.alive?)
      throw Exception.new("Illegal access")
    end
  end
end