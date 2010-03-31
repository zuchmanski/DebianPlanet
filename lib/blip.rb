class Blip < ActiveResource::Base
  self.site = 'http://api.blip.pl/'
  self.element_name = "update"
  self.user = BLIP_CONFIG[:username]
  self.password = BLIP_CONFIG[:password]
  self.headers['X-Blip-API'] = '0.02'
  self.headers['Accept'] = 'application/json'
  self.headers['User-Agent'] = 'PlanetaDebiana'
  self.format = :json

  def self.create_from_template(e)
    template_pre = "\""
    template_post = "\" http://www.planetadebiana.pl/redirect/#{e.id}"
    self.create(:body => (template_pre + e.name[0, 160-template_pre.size-template_post.size] + template_post))
  end
end
