
Pod::Spec.new do |s|
    s.name = 'LocalizationServices'
    s.version = '0.2.2'
    s.summary = 'Module for fetching localized strings based on a Locale from a Bundles .strings and .stringsdict files.'
  
  
    s.description = 'Provides a service for fetching localized strings from a .strings and .stringsdict file based on locale.'
  
    s.homepage = 'https://github.com/CruGlobal/localization-services-ios'
    s.license = { :type => 'MIT', :file => 'LICENSE' }
    s.author = { 'Levi Eggert' => 'levi.eggert@cru.org' }
    s.source = { :git => 'https://github.com/CruGlobal/localization-services-ios.git', :tag => s.version.to_s }
  
    s.swift_version = '5.7'
    s.platforms = {
        "ios": "13.0"
    }
  
    s.source_files = 'Sources/**/*.{swift}'  
  end
  