# frozen_string_literal: true

module GithubEventsExport
  # Wrapper around a GitHub Event
  # https://developer.github.com/v3/activity/events
  class Event
    def self.all(client)
      client.user_events(client.user.id).map { |e| new(e) }
    end

    def initialize(event_data)
      @event_data = event_data
    end

    def save
      File.write(filename, to_json)
    end

    private

    attr_reader :event_data

    def filename
      "#{event_data.id}.json"
    end

    def to_json
      event_data.to_h.to_json
    end
  end
end
