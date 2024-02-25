# conn = Message.new(url: 'https://moderation.logora.fr/predict')
#     response = conn.post do |req|
#       req.url '/messages'
#       req.headers['Content-Type'] = 'application/json'
#       req.body = {
#         post:
#         { title: params[:title],
#           content: params[content]}
#       }.to_json
#     end
#     JSON.parse(response.body)
require 'uri'
require 'api'
require 'net/https'
require 'json'

@toSend = {}.to_json

module Api
    uri = URI.parse("https://moderation.logora.fr/predict")

end