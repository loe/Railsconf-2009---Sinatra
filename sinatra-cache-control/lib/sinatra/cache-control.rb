# Don't require sinatra, it should be required before the plugin

module Sinatra
  
  module CacheControl
    
    ##
    # cache_control :public => true, :max_age => 5
    # Cache-Control=public, max-age=5
    def cache_control(options)
      parts = options.map do |k, v|
        if v == true
          k
        else
          "#{k.to_s.tr('_', '-')}=#{v}"
        end
      end
      
      headers['Cache-Control'] = parts.join(',')
    end
    
  end
  
  helpers CacheControl
  
end