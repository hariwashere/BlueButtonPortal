class BbpPullRequestController < ApplicationController
  def new
    @bbp_pull_request = BbpPullRequest.new(:email => params[:email])
  end
end