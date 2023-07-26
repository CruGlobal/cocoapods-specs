Pod::Spec.new do |s|
  
  s.name          = 'Horatio'
  s.version       = '0.5.0'
  s.license       = 'MIT'
  s.summary       = 'Horatio is a library of patterns, protocols, and classes typical for the "skeleton" of a modern app.'  
  s.homepage      = 'https://github.com/ktatroe/MPA-Horatio'
  s.author        = { 'Kevin Tatroe' => 'support@mudpotapps.com' }
  s.source        = { :git => 'https://github.com/CruGlobal/MPA-Horatio.git', :tag => s.version.to_s }

  s.description   = 'Operations queue with conditions, observers, and improved error handling ' \
				  '(based on Apple’s \"Advanced NSOperations\" sample code). ' \
				  'HTTP requests for standard REST services. ' \
				  'An injection container. ' \
				  'A feature availability system for global or per-subject behaviors.'  

  s.swift_version = '5.7'
  s.platforms = {
      "ios": "12.0"
  }

  s.requires_arc = true
  
  s.default_subspec = 'Core'

  s.subspec 'Core' do |core|
    core.source_files = 'Sources/Horatio/**/*.{swift}'
  end

end
