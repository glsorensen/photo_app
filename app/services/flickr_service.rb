require 'faraday'
require 'json'

class FlickrService
  def self.search_images(keyword)
    url = 'https://api.flickr.com/services/rest'
    connection = Faraday.new(url) do |faraday|
      faraday.params['api_key'] = ENV['flickr_key']
      faraday.params['method'] = 'flickr.photos.search'
      faraday.params['format'] = 'json'
      faraday.params['nojsoncallback'] = '1'
      faraday.params['safe_search'] = '1'
      faraday.params['text'] = keyword
    end

    response = connection.get
    JSON.parse(response.body)
  end
end
