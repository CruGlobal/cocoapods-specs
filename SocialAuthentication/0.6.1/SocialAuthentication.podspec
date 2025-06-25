
Pod::Spec.new do |s|
    s.name = 'SocialAuthentication'
    s.version = '0.6.1'
    s.summary = 'Module for obtaining access tokens from social platforms FacebookLogin, GoogleSignIn, and AppleSignIn.'
    s.description = 'This module implements Classes for obtaining access tokens from FacebookLogin, GoogleSignIn, and AppleSignIn.'
    s.homepage = 'https://github.com/CruGlobal/social-authentication-ios'
    s.license = { :type => 'MIT', :file => 'LICENSE' }
    s.author = { 'Levi Eggert' => 'levi.eggert@cru.org' }
    s.source = { :git => 'https://github.com/CruGlobal/social-authentication-ios.git', :tag => s.version.to_s }
  
    s.swift_version = '5.7'
    s.platforms = {
        "ios": "14.0"
    }
  
    s.source_files = 'Sources/**/*.{swift}'  
	
    s.dependency 'FBSDKLoginKit', '~> 18.0.0'
    s.dependency 'GoogleSignIn', '~> 8.0.0' 
  end
  
