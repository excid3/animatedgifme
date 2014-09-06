require "animatedgifme/version"
require "httparty"

module Animatedgifme
  include HTTParty
  base_uri "animatedgif.me"

  def self.find(id)
    retrieve_url get("/gifs/#{id}.json")
  end

  def self.tagged(tag)
    retrieve_url get("/#{tag}.json")
  end

  def self.random(tag)
    tagged(tag)
  end

  private

    def retrieve_url(response)
      response.parsed_response["url"]
    end
end
