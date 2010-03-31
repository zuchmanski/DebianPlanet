ActionController::Routing::Routes.draw do |map|
  map.feed '/rss', :controller => 'home', :action => 'index', :format => 'rss'
  map.community '/community', :controller => 'home', :action => 'community'
  map.contact '/contact', :controller => 'home', :action => 'contact'
  map.about '/about', :controller => 'home', :action => 'about'

  map.redirection_stats 'redirect/:id/stats', :controller => 'home', :action => 'redirection_stats'
  map.redirect '/redirect/:id', :controller => 'home', :action => 'redirect'

  map.paged_entries '/page/:page', :controller => 'home'
  map.root :controller => "home"

  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end
