
Pod::Spec.new do |s|
    s.name = 'MpdxApi'
    s.version = '1.1.1'
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
	
    s.dependency 'KeychainPasswordStore', '~> 1.0.3'
    s.dependency 'OAuth', '~> 1.2.5'
    s.dependency 'OktaAuthentication', '~> 1.4.3'
    s.dependency 'RequestOperation', '~> 1.8.3' 
  end
  