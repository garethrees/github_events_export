require_relative 'lib/github_events_export/version'

Gem::Specification.new do |spec|
  spec.name          = 'github_events_export'
  spec.version       = GithubEventsExport::VERSION
  spec.authors       = ['Gareth Rees']
  spec.email         = ['gareth@garethrees.co.uk']

  spec.summary       = 'Export GitHub events to JSON files'
  spec.homepage      = 'https://github.com/garethrees/github_events_export'

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = 'https://github.com/garethrees/github_events_export'
  spec.metadata['changelog_uri'] = 'https://github.com/garethrees/github_events_export/blob/master/CHANGELOG.md'

  spec.required_ruby_version = Gem::Requirement.new('>= 2.3.0')

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end

  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_runtime_dependency 'octokit', '~> 4.15.0'
end
