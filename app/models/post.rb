class Post < ApplicationRecord

	belongs_to :user

	after_create  :user_posts_count
  after_destroy :user_posts_count

  private
  
  def user_posts_count
    cache_key = [user.cache_key, "#{self.user.username}_post"]
    Rails.cache.delete(cache_key)
  end
end