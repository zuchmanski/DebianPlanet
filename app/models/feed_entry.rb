class FeedEntry < ActiveRecord::Base

  belongs_to :blogger
  default_scope :order => "published_at DESC" 

  def self.update_all_feeds
    Blogger.all.each(&:update_feed)  
  end

end
