require 'faraday'
require 'json'

class FlickrService
  def self.connection(search)
    Faraday.new('https://www.flickr.com/services/rest/') do |faraday|
      faraday.params['method'] = 'flickr.photos.search'
      faraday.params['api_key'] = ENV['flickr_api_key']
      faraday.params['format'] = 'json'
      faraday.params['nojsoncallback'] = '1'
      faraday.params['safe_search'] = '1'
      faraday.params['per_page'] = '10'
      faraday.params['text'] = search
    end
  end
  JSON.parse(response.body, symbolize_names: true)
end
