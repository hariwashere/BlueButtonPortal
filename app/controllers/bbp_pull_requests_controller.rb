class BbpPullRequestsController < ApplicationController

  def new
    @bbp_pull_request = BbpPullRequest.new
  end
  
  def create
    @bbp_pull_request = BbpPullRequest.new(:email => params[:bbp_pull_request][:email])
    @bbp_pull_request.save
    UserMailer.test_message(@bbp_pull_request).deliver
    {:notice => "Successfully created"}
  end
end