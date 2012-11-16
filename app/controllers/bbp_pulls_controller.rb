class BbpPullsController < ApplicationController
  def new
    uuid = params[:uuid]
    bbp_pull_request = BbpPullRequest.find_by_uuid(uuid)
    if ((bbp_pull_request == nil) || !bbp_pull_request.alive?)
      render :error
    end
    @bbp_pull = BbpPull.new
    @ehr_sites = EhrSite.sites
  end

  def create
    @bbp_pull = BbpPull.new(params[:bbp_pull])
    @bbp_pull.save
    UserMailer.ehr_pull_request(@bbp_pull).deliver
    render :js => "alert('Process started');"
  end
end