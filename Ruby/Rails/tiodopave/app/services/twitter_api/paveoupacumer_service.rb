require 'rest-client'

module TwitterApi
  class PaveoupacumerService
    def self.tweet(post)
      client.update(post)
    end

    def self.last_posted_tweet
      client.user_timeline('paveoupacumer', count: 1).first.full_text
    end

    def self.last_posted_tweet_uri
      client.user_timeline('paveoupacumer', count: 1).first.uri.to_str
    end

    def self.client
      Twitter::REST::Client.new do |config|
        config.consumer_key        = ENV["TWITTER_CONSUMER_KEY"]
        config.consumer_secret     = ENV["TWITTER_CONSUMER_SECRET"]
        config.access_token        = ENV["TWITTER_ACCESS_TOKEN"]
        config.access_token_secret = ENV["TWITTER_ACCESS_SECRET"]
      end
    end
  end
end
