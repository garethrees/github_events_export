# frozen_string_literal: true

require 'bundler/setup'
require 'github_events_export'

RSpec.configure do |config|
  # Enable flags like --only-failures and --next-failure
  config.example_status_persistence_file_path = '.rspec_status'

  # Disable monkey patching but allow global DSL
  config.disable_monkey_patching!
  config.expose_dsl_globally = true
end
