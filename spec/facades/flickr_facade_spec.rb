require 'rails_helper'

RSpec.describe FlickrFacade do
  describe 'happy path' do
    it 'will return the photo secret', :vcr do
      data_secret = FlickrFacade.search_images('dogs')
      expect(data_secret).to be_a(Array)
      expect(data_secret.count).to eq(10)

    end
    it 'will return the photo server', :vcr do
      data_server = FlickrFacade.search_images('dogs')
      expect(data_server).to be_a(Array)
      expect(data_server.count).to eq(10)

    end
  end
  describe 'sad path', :vcr do
  end
end
