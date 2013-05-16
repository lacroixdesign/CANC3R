class CacheManager

  def self.expire_home
    Rails.cache.delete "home"
  end

end
