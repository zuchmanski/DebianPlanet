class Blip < ActiveResource::Base
  self.site = 'http://api.blip.pl/'
  self.element_name = "update"
  self.user = BLIP_CONFIG[:username]
  self.password = BLIP_CONFIG[:password]
  self.headers['X-Blip-API'] = '0.02'
  self.headers['Accept'] = 'application/json'
  self.headers['User-Agent'] = 'PlanetaDebiana'
  self.format = :json

  def self.create_from_template(body)
    template_pre = "#planetadebiana \""
    template_post = "\" http://planetadebiana.pl"
    self.create(:body => (template_pre + body[0, 160-template_pre.size-template_post.size] + template_post))
  end
end
