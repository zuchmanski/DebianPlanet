class HomeController < ApplicationController

  def index
    respond_to do |format|
      format.html { @entries = FeedEntry.paginate(:page => params[:page], :per_page => 10) }
      format.rss { @entries = FeedEntry.all(:limit => 20) }
    end
  end

  def community
    @bloggers = Blogger.all
  end

  def about

  end

  def contact

  end

  def redirect
    @entry = FeedEntry.find(params[:id])
    @entry.increment!(:redirection_counter)

    redirect_to @entry.url
  end

  def redirection_stats
    @entry = FeedEntry.find(params[:id])
  end

end
