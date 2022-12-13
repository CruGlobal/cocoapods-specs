
Pod::Spec.new do |s|
    s.name             = 'KeychainPasswordStore'
    s.version          = '1.0.0'
    s.summary          = 'Implements Security Framework for storing passwords in a device keychain.'
  
  
    s.description      = 'This module implements the Security Framework for storing generic passwords in the device keychain.  Passwords are stored as kSecClassGenericPassword and keyed with an account and service for searching stored passwords.'
  
    s.homepage         = 'https://github.com/CruGlobal/keychain-password-store-ios'
    s.license          = { :type => 'MIT', :file => 'LICENSE' }
    s.author           = { 'Levi Eggert' => 'levi.eggert@cru.org' }
    s.source           = { :git => 'https://github.com/CruGlobal/keychain-password-store-ios.git', :tag => s.version.to_s }
  
    s.swift_version = '5.7'
    s.platforms = {
        "ios": "12.0"
    }
  
    s.source_files = 'Sources/**/*.{swift}'    
  end
  