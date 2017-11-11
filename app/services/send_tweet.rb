require 'twitter'

class SendTweet
	def initialize(string)
		@string = string
	end

	def log_in_to_twitter
		@client = Twitter::REST::Client.new do |config|
  		  config.consumer_key        = "W7eqlqxLBfqy2FIarlHvVGL9v"
		  config.consumer_secret     = "tmxSrxQb3NUhhSoYSdDTodSHWWNNRp8oA4Gm7KaqYFO7tUSTIv"
		  config.access_token        = "918085246129786880-0hfPyRHVW9DHnXMrSFK0P6MfB6BYBPA"
		  config.access_token_secret = "tgvsJSujrJjfZax6a6gCDz73gntDaIKPfBL5qIO629uVt"
	end
	end

	def perform
		log_in_to_twitter
		@client.update(@string)
	end


end
