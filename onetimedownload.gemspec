Gem::Specification.new do |s|
  s.name        = 'onetimedownload'
  s.version     = '0.0.1'
  s.date        = Time.now.strftime('%Y-%m-%d')

  s.summary     = 'Simple tool for serving a file to a single recipient'
  s.description = 'Simple tool for serving a file to a single recipient'
  s.authors     = ['Les Aker']
  s.email       = 'me@lesaker.org'
  s.homepage    = 'https://github.com/akerl/onetimedownload'
  s.license     = 'MIT'

  s.files       = `git ls-files`.split
  s.test_files  = `git ls-files spec/*`.split
  s.executables = ['otd']

  s.add_dependency 'mercenary', '~> 0.3.4'

  s.add_development_dependency 'rubocop', '~> 0.50.0'
  s.add_development_dependency 'goodcop', '~> 0.0.1'
  s.add_development_dependency 'rake', '~> 12.1.0'
  s.add_development_dependency 'coveralls', '~> 0.8.0'
  s.add_development_dependency 'rspec', '~> 3.6.0'
  s.add_development_dependency 'fuubar', '~> 2.2.0'
end
