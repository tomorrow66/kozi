# Settings for routing requests from mobile phones to separate views.
# For more info, see: ./libraries/mobile_requests.rb

set :mobile_views, true

MOBILE_USER_AGENTS = [
	/iPhone/,
	/Android.*AppleWebKit/
]