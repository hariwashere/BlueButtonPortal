class BbpPullsController < ApplicationController
  def new
    uuid = params[:uuid]
    bbp_pull_request = BbpPullRequest.find_by_uuid(uuid)
    if ((bbp_pull_request == nil) || !bbp_pull_request.alive?)
      render :error
    end
  end
end