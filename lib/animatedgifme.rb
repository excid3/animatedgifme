require "animatedgifme/version"
require "httparty"

module Animatedgifme
  include HTTParty
  base_uri "animatedgif.me"

  def self.find(id)
    retrieve_url "/gifs/#{id}.json"
  end

  def self.tagged(tag)
    retrieve_url "/#{tag}.json"
  end

  def self.random(tag)
    tagged(tag)
  end

  def self.retrieve_url(response)
    get(response).parsed_response["url"]
  end
  
end
