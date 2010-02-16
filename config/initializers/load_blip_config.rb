raw_config = File.read(RAILS_ROOT + "/config/blip.yml")
BLIP_CONFIG = YAML.load(raw_config).symbolize_keys
