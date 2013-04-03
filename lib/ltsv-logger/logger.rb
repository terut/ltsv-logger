require 'logger'
module LTSV
  module Logger
    class Logger < ::Logger
      def initialize(*args)
        super
        @formatter = LTSVFormatter.new
      end

      class LTSVFormatter < ::Logger::Formatter
        def call(severity, timestamp, progname, msg)
          raws = ["time:#{timestamp}"]
          case msg
          when Hash
            raws = msg.inject(raws) { |h, (key, value)| h << "#{key}:#{value}"; h }
          when String
            raws << "message:#{msg}"  
          end
          "#{raws.join("\t")}\n"
        end
      end
    end
  end
end
