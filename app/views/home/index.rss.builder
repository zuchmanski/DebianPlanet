xml.instruct! :xml, :version => "1.0" 
xml.rss :version => "2.0" do
  xml.channel do
    xml.title "Debian Planet"
    xml.description "Polska Planeta Debiana"
    xml.link root_url
    
    for entry in @entries
      xml.item do
        xml.title entry.name
        xml.description truncate_w entry.content, SITE_CONFIG[:number_of_words]
        xml.pubDate entry.published_at.to_s(:rfc822)
        xml.link redirect_url(entry)
        xml.guid redirect_url(entry)
      end
    end
  end
end
