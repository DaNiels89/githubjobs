# frozen_string_literal: true

class Api_jobs < ApplicationController
  def githubjobs
    response = HTTParty.get('https://jobs.github.com/positions.json')
    render json: JSON.parse(response.body)
  end
end
