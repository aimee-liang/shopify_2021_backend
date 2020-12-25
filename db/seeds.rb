# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'uri'
require 'net/http'
require 'JSON'

uri = URI.parse("http://www.omdbapi.com/?apikey=[OMDB_API_KEY]&")
request = Net::HTTP::Get.new(uri)
request["Accept"] = "application/json"

req_options = {
    use_ssl: uri.scheme == "https"
}

response = Net::HTTP.start(uri.hostname, uri.port, req_options) do |http|
    http.request(request)
end

movie_array = JSON.parse(response.body)

movie_array.each do |movie|
        
end