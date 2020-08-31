namespace :cache do
  desc 'Clear cache'
  task clear: :environment do
  	redis = Redis.new(host: "localhost")
  	keys =  redis.keys
    redis.del(*keys)
  end
end