require "animatedgifme/version"
require "httparty"

module Animatedgifme
  include HTTParty
  base_uri "animatedgif.me"

  def self.find(id)
    get("/gifs/#{id}.json").parsed_response["url"]
  end

  def self.tagged(tag)
    get("/#{tag}.json").parsed_response["url"]
  end

  def self.random(tag)
    tagged(tag)
  end
end
