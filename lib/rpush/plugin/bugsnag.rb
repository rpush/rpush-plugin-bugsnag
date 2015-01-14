require 'bugsnag'

plugin = Rpush.plugin(:bugsnag)
plugin.url = 'https://github.com/rpush/rpush-plugin-bugsnag'
plugin.description = 'Report errors to Bugsnag.'

plugin.reflect do |on|
  on.error do |error|
    Bugsnag.notify(error, severity: 'error')
  end
end
