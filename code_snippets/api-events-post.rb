require 'rubygems'
require 'dogapi'

api_key='9775a026f1ca7d1c6c5af9d94d9595a4'
app_key='87ce4a24b5553d2e482ea8a8500e71b8ad4554ff'

dog = Dogapi::Client.new(api_key, app_key)

# submitting events doesn't require an application_key, so we don't bother
# setting it
dog = Dogapi::Client.new(api_key)

dog.emit_event(Dogapi::Event.new('Testing done, FTW'))