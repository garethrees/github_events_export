# frozen_string_literal: true

module GithubEventsExport
  # Save each Event to disk
  class Export
    def initialize(client)
      @client = client
    end

    def run
      Event.all(client).each(&:save)
    end

    private

    attr_reader :client
  end
end
