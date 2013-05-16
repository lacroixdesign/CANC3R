class CacheManager

  def self.expire_home
    Rails.cache.delete "views/home"
  end

end
