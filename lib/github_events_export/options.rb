# frozen_string_literal: true

require 'optparse'

module GithubEventsExport
  # Parse CLI options
  class Options
    def initialize(args)
      @args = args
    end

    def [](key)
      parse[key]
    end

    def to_hash
      parse
    end

    private

    attr_reader :args

    def parse
      options = {}
      option_parser.parse!(args, into: options)
      options
    end

    def option_parser
      OptionParser.new do |opts|
        opts.banner = 'Usage: github-events-export [options]'
        opts.on('--token=TOKEN', 'GitHub Access Token')
        opts.on('-v', '--version', 'Print version')
        opts.on('-h', '--help', 'Prints this help') do
          puts opts
          exit 1
        end
      end
    end
  end
end
