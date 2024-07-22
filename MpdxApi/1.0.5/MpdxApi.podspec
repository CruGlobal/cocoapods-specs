
Pod::Spec.new do |s|
    s.name = 'MpdxApi'
    s.version = '1.0.5'
    s.summary = 'MPDX REST API for Swift iOS.'
    s.description = 'An iOS swift module for making network requests and decoding json against the MPDX REST API.'
    s.homepage = 'https://github.com/CruGlobal/oauth-ios'
    s.license = { :type => 'MIT', :file => 'LICENSE' }
    s.author = { 'Levi Eggert' => 'levi.eggert@cru.org' }
    s.source = { :git => 'https://github.com/CruGlobal/mpdx-api-ios.git', :tag => s.version.to_s }
  
    s.swift_version = '5.7'
    s.platforms = {
        "ios": "13.0"
    }
  
    s.source_files = 'Sources/**/*.{swift}'  
	
    s.dependency 'RequestOperation', '~> 1.6.2' 
  end
  