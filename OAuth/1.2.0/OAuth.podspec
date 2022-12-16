
Pod::Spec.new do |s|
    s.name             = 'OAuth'
    s.version          = '1.2.0'
    s.summary          = 'Generic OAuth implementation using PKCE flow and ASWebAuthenticationSession.'
  
  
    s.description      = 'This module implements OAuth with a PKCE flow and ASWebAuthenticationSession.  It is configurable for authorizing, fetching access and refresh tokens, and persisting tokens to the device keychain.'
  
    s.homepage         = 'https://github.com/CruGlobal/oauth-ios'
    s.license          = { :type => 'MIT', :file => 'LICENSE' }
    s.author           = { 'Levi Eggert' => 'levi.eggert@cru.org' }
    s.source           = { :git => 'https://github.com/CruGlobal/oauth-ios.git', :tag => s.version.to_s }
  
    s.swift_version = '5.7'
    s.platforms = {
        "ios": "13.0"
    }
  
    s.source_files = 'Sources/**/*.{swift}'  
	
    s.dependency 'OktaOidc', '~> 3.11.2'
    s.dependency 'RequestOperation', '~> 1.2.1' 
    s.dependency 'KeychainPasswordStore', '~> 1.0.0' 
  end
  