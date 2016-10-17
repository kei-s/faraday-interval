require 'faraday'
require 'faraday/interval/version'

module Faraday
  module Interval
    class Middleware < Faraday::Middleware
      def initialize(app, options = {})
        super(app)
        @second = options[:second] || 1
        @last_call = nil
      end

      def call(env)
        sleep 1 while @last_call && Time.now < @last_call + @second
        @app.call(env).on_complete do
          @last_call = Time.now
        end
      end
    end
  end

  Request.register_middleware interval: lambda { Interval::Middleware }
end
