Gem::Specification.new do |s|
  s.author = 'John F. Miller'
  s.date = File.ctime('Version')
  s.description = File.read('About')
  s.email = 'support@antarestrader.com'
  s.extra_rdoc_files = ['README']
  s.files = Dir['lib/**/*'] + Dir['spec/**/*'] +
    ['About','Todo','License','Rakefile','README','Version']
  s.has_rdoc = true
  #s.homepage = 'http://???'
  s.name = 'coord3d'
  s.summary = s.description
  s.version = File.read('Version')
end