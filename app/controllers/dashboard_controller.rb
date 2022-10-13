class DashboardController < ApplicationController
  before_action :authenticate_user!
  def index
    @Articles = current_user.articles.all
  end
end
