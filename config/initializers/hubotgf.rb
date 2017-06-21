HubotGf.configure do |config|
  config.hubot_url = ENV.fetch('HUBOT_URL') # default interface/port for Hubot
  config.catchall_worker = nil
end
