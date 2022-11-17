Pod::Spec.new do |s|
  
  s.name             = 'MPDXiOSLib'
  s.version          = '0.1.12'
  s.summary          = 'MPDX source code for creating re-branded apps.'
  s.description	    = 'This library contains all necessary source code for creating a MPDX app that can be re-branded.'
  s.homepage         = 'https://github.com/CruGlobal/mpdx-ios-lib'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { '970048' => 'gyasi.story@cru.org' }
  s.source           = { :git => 'https://github.com/CruGlobal/mpdx-ios-lib.git', :tag => s.version.to_s }

  s.swift_version = '5.6'
  s.platforms = {
      "ios": "14.0"
  }

  s.source_files = 'Source/SourceFiles/**/*.{h,m,swift}'
  
  s.resource_bundles = {
    'MPDXiOSLib_Assets' => ['Source/**/*.{xib,storyboard,png,xcassets,json}'],
    'MPDXiOSLib_CoreDataModel' => ['Source/ResourceBundles/CoreDataModel/**/*.{xcdatamodeld}'],
    'MPDXiOSLib_LocalizableStrings' => ['Source/ResourceBundles/LocalizableStrings/*.lproj']
  }

  s.static_framework = true
  s.pod_target_xcconfig = {
    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'
  }
  s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }

  s.frameworks = 'UIKit', 'MapKit', 'CoreData'

  s.dependency 'Horatio', '0.3.2-SNAPSHOT'
  
  s.dependency 'FirebaseAnalytics', '7.0.0'
  s.dependency 'FirebaseCore'
  s.dependency 'FirebaseCrashlytics', '7.0.0'
  s.dependency 'FirebasePerformance', '7.0.0'
  
  s.dependency 'GoogleTagManager', '~> 7.2.0'

  s.dependency 'Alamofire', '~> 4.4'
  s.dependency 'PromiseKit'
  s.dependency 'PromiseKit/Alamofire'

  s.dependency 'RequestOperation', '~> 1.2.1'
  s.dependency 'OktaAuthentication', '~> 1.3.0'
end
