module CircleCIReporter
  class Error < StandardError; end

  class RequestError < Error
    attr_reader :resp

    # @param message [String]
    # @param resp [Faraday::Response]
    def initialize(message, resp)
      @message = message
      @resp = resp
      super(message)
    end
  end

  class NoActiveReporter < Error; end
end
