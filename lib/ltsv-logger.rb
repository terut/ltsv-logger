require "ltsv-logger/version"

module LTSV
  module Logger
    require 'ltsv-logger/logger'
    class LTSVLoggerError < StandardError; end

    class << self
      attr_accessor :logger

      def open(name)
        self.logger = Logger.new(name)
      end
    end
  end

  # shortcut method
  class << self
    def logger
      LTSV::Logger.logger
    end
  end
end
