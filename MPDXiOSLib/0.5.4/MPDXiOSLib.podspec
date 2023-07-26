Pod::Spec.new do |s|
  
  s.name             = 'MPDXiOSLib'
  s.version          = '0.5.4'
  s.summary          = 'MPDX source code for creating re-branded apps.'
  s.description	    = 'This library contains all necessary source code for creating a MPDX app that can be re-branded.'
  s.homepage         = 'https://github.com/CruGlobal/mpdx-ios-lib'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { '970048' => 'gyasi.story@cru.org' }
  s.source           = { :git => 'https://github.com/CruGlobal/mpdx-ios-lib.git', :tag => s.version.to_s }

  s.swift_version = '5.7'
  s.platforms = {
      "ios": "14.0"
  }

  s.source_files = 'Sources/MPDXiOSLib/SourceFiles/**/*.{swift}'
  
  s.resource_bundles = {
    'MPDXiOSLib_Assets' => ['Sources/MPDXiOSLib/Resources/**/*.{xib,storyboard,png,xcassets,json}'],
    'MPDXiOSLib_CoreDataModel' => ['Sources/MPDXiOSLib/Resources/CoreDataModel/**/*.{xcdatamodeld}'],
    'MPDXiOSLib_LocalizableStrings' => ['Sources/MPDXiOSLib/Resources/LocalizableStrings/*.lproj'],
    'MPDXiOSLib_UsageDescriptions' => ['Sources/MPDXiOSLib/Resources/UsageDescriptions/*.lproj']
  }

  s.static_framework = true

  s.frameworks = 'UIKit', 'MapKit', 'CoreData'

  s.dependency 'Horatio', '0.5.0'
  
  s.dependency 'FirebaseAnalytics', '10.11.0'
  s.dependency 'FirebaseCore', '10.11.0'
  s.dependency 'FirebaseCrashlytics', '10.11.0'
  s.dependency 'FirebasePerformance', '10.11.0'
  
  s.dependency 'GoogleTagManager', '~> 7.4.3'

  s.dependency 'Alamofire', '4.9.1'
  s.dependency 'PromiseKit', '6.18.1'
  
  s.dependency 'RequestOperation', '~> 1.3.2'
  s.dependency 'OktaAuthentication', '~> 1.4.2'
  s.dependency 'OAuth', '~> 1.2.1'
end
