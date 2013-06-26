require 'reel'
require 'reel/app'
require 'json'

class StatsHandler
  include Reel::App

  get '/status' do
    response = {}

    response[:number_of_calls]   = Adhearsion.active_calls.size
    response[:status]            = Adhearsion::Process.state_name.to_s
    [200, {}, response.to_json]
  end

  get '/' do
    'Nothing defined for root'
  end
end
