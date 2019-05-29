namespace :twitter do
  desc "Tweets last post from '/r/tiodopave' to '@paveoupacumer' twitter account"
  task fire_tweet: :environment do
    question, answer =
      RedditApi::TiodopaveService.new.get_newest_post.values
    twitter_bot = TwitterBot.new("#{question}\n\n#{answer}")

    if twitter_bot.already_tweet?
      puts "%%% Post already tweeted..."
      puts "%%% Skiping tweeting..."
    else
      twitter_bot.fire_tweet
      puts "=== Tweeted successfully!"
    end
  end
end
