class TwitterBot
  def initialize(post)
    @post = post
  end

  def already_tweet?
    TwitterApi::PaveoupacumerService.last_posted_tweet.include?(@post)
  end

  def fire_tweet
    TwitterApi::PaveoupacumerService.tweet(@post)
  end
end
