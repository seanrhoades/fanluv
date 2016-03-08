class ItunesSearchController < ActionController::Base

  def self.search(artist)
    @search = ITunesSearchAPI.search(:term => artist, :country => "US", :media => "music")
    return @reponse = @search.first['artistViewUrl']
  end

  def self.searchAlbums(artist)
    @search = ITunesSearchAPI.search(:term => artist, :country => "US", :media => "music")    
    @search.each do |search|
      return @reponse = search['trackName']
    end
    @response
  end


end
