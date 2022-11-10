class DashboardController < ApplicationController
  before_action :authenticate_user!
  def index

    if params[:query] == nil || params[:query] == ""
      query_articles = current_user.articles
    else
      query = params[:query]
      query_articles = current_user.articles.where(title:query)
    end

    @q = query_articles.ransack(params[:q])
    @Articles = @q.result(distinct: true)

  end

end
