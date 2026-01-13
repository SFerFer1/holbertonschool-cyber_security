require 'net/http'
require 'json'
require 'uri'

def get_request(url)
  uri = URI(url)
  response = Net::HTTP.get_response(uri)

  puts "Response status: #{response.code} #{response.message}"
  puts
  puts "Response body:"
  puts

  data = JSON.parse(response.body)
  puts JSON.pretty_generate(data)
end

