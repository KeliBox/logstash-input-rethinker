Gem::Specification.new do |s|
  s.name          = 'logstash-input-rethinker'
  s.version       = '0.1.0'
  s.licenses      = ['Apache License (2.0)']
  s.summary       = 'RethinkDB updated logstash plugin'
  s.description   = 'Copy paste of old RethinkDB plugin to new logstash format'
  s.homepage      = 'https://github.com/wayann/logstash-input-rethinker'
  s.authors       = ['Wayann']
  s.email         = 'wayann@nrg.re'
  s.require_paths = ['lib']

  # Files
  s.files = Dir['lib/**/*','spec/**/*','vendor/**/*','*.gemspec','*.md','CONTRIBUTORS','Gemfile','LICENSE','NOTICE.TXT']
   # Tests
  s.test_files = s.files.grep(%r{^(test|spec|features)/})

  # Special flag to let us know this is actually a logstash plugin
  s.metadata = { "logstash_plugin" => "true", "logstash_group" => "input" }

  # Gem dependencies
  s.add_runtime_dependency 'logstash-core-plugin-api', '~> 2.0'
  s.add_runtime_dependency 'logstash-codec-plain', '~> 3.0', '>= 3.0.2'
  s.add_runtime_dependency 'stud', '~> 0.0.22'
  s.add_runtime_dependency 'rethinkdb', '~> 2.0', '>= 2.3.0'
  s.add_runtime_dependency 'eventmachine', '~> 1.0', '>= 1.0.9.1'
  s.add_development_dependency 'logstash-devutils', '~> 1.3', '>= 1.3.1'
end
