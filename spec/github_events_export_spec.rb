# frozen_string_literal: true

require 'spec_helper'

describe GithubEventsExport do
  it 'has a version number' do
    expect(GithubEventsExport::VERSION).not_to be nil
  end
end
