require 'rails_helper'

RSpec.describe 'Flickr Service' do
  it 'returns a faraday response', :vcr do
    connection = FlickrService.search_images('dogs')
    expect(connection).to be_a(Hash)
  end
end
