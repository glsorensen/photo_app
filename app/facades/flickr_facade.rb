class FlickrFacade

  def self.search_images(keyword)
    data_secret = FlickrService.search_images(keyword)

    data_secret["photos"]["photo"].map do |photo|
      photo["secret"]
      photo["server"]
    end

    data_server = FlickrService.search_images(keyword)

    data_server["photos"]["photo"].map do |photo|
      photo["server"]
    end

    data_farm = FlickrService.search_images(keyword)

    data_farm["photos"]["photo"].map do |photo|
      photo["farm"]
    end
  end
end
