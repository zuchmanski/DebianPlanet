class Blogger < ActiveRecord::Base

  has_many :feed_entries, :dependent => :destroy

  def update_feed(blip = true)
    feed = Feedzirra::Feed.fetch_and_parse(rss)
    feed.entries.each do |entry|
      unless feed_entries.exists? :guid => entry.id
        feed_entries.create!(
          :blogger      => self,
          :name         => entry.title,
          :content      => entry.summary.gsub(/<\/?[^>]*>/, ""),
          :url          => entry.url,
          :published_at => entry.published,
          :guid         => entry.id
        )      
        Blip.create_from_template(entry.title) if blip
      end
    end
  end

end
