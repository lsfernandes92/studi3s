require 'rest-client'

module RedditApi
  class TiodopaveService
    BASE_URL = 'https://www.reddit.com'
    BASE_OAUTH_URL = 'https://oauth.reddit.com'

    def get_newest_post(options = 'limit=1')
      post = get("#{BASE_OAUTH_URL}/r/tiodopave/new.json?#{options}")
      {
        title: post["data"]["children"][0]["data"]["title"],
        selftext: post["data"]["children"][0]["data"]["selftext"]
      }
    end

      private

      def payload
        {
          "grant_type": "password",
          "username": ENV["REDDIT_USERNAME"],
          "password": ENV["REDDIT_PASSWORD"]
        }
      end

      def headers
        {
          :accept => "application/json",
          :content_type => "application/json"
        }
      end

      def json_parse(response)
        JSON.parse(response.body)
      end

      def gather_access_token
        post(
          "#{BASE_URL}/api/v1/access_token",
          payload,
          headers
        )["access_token"]
      end

      def get(path)
        response = RestClient.get(
          path,
          { :Authorization => "Bearer #{gather_access_token}" }
        )

        json_parse(response)
      end

      def post(path, payload, headers)
        response = RestClient::Request.execute(
          :method => :post,
          :url => path,
          :user => ENV["REDDIT_TIODOPAVE_APP_ID"],
          :password => ENV["REDDIT_TIODOPAVE_APP_SECRET"],
          :payload => payload,
          :headers => headers
        )

        json_parse(response)
      end
  end
end
