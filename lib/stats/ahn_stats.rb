require 'reel'
require 'json'

class StatsHandler
  def self.handle(request)
    response = {}

    response[:number_of_calls]   = Adhearsion.active_calls.size
    response[:status]            = Adhearsion::Process.state_name.to_s
    [:ok, "#{response.to_json}"]
  end
end

