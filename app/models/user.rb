class User < ApplicationRecord

  has_many :posts

  def posts_count
  	time = (Time.now.to_f * 1000).to_i + 50
    Rails.cache.fetch([cache_key, "#{self.username}_post"], expires_in: 10.minutes) do
      posts.count
    end
  end
end
