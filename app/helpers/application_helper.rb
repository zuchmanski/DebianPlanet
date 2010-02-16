# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  def truncate_w(body, wordcount)  
    body.split[0..(wordcount-1)].join(" ") + (body.split.size > wordcount ? " [...]" : "") 
  end
end
