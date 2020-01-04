# frozen_string_literal: true

module GithubEventsExport
  # Entrypoint for CLI usage
  class CLI
    STATUS_SUCCESS = 0
    STATUS_FAILURE = 1

    def self.run(argv)
      new(Options.new(argv)).run
    end

    def initialize(options)
      @options = options
    end

    def run
      Export.new(client).run
      STATUS_SUCCESS
    end

    private

    attr_reader :options

    def client
      @client ||= ::Octokit::Client.new(
        access_token: options[:token],
        auto_paginate: true
      )
    end
  end
end
