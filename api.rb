require 'httparty'
require 'json'

response = HTTParty.get('https://api.dictionaryapi.dev/api/v2/entries/en/happy')
# puts response.body
# puts response.body['title'].value

result = JSON.parse(response.to_s)

puts result[0]['word']