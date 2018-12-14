class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :site_search


  def site_search
    @search = Post.search(params[:search])
    @search_posts = @search.order("id desc").limit(15)
  end
end
