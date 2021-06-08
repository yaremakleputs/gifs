class Gif < Hanami::Entity
  def where(query)
    response = HTTParty.get("https://api.giphy.com/v1/gifs/search?api_key=#{ENV['GIPHY_API_KEY']}&q=#{query}")
    response['data']
  end
end
