class BbpPullsController < ApplicationController
  def new
    uuid = params[:uuid]
    bbp_pull_request = BbpPullRequest.find_by_uuid(uuid)
    if ((bbp_pull_request == nil) || !bbp_pull_request.alive?)
      render :error
    end
    @bbp_pull = BbpPull.new
  end

  def create
    @bbp_pull = BbpPull.new(params[:bbp_pull_request])
    @bbp_pull.save
    render :js => "alert('Process started');"
  end
end