Pod::Spec.new do |s|
  s.name             = 'TheKeyOAuthSwift'
  s.version          = '0.2.0'
  s.summary          = 'Swift Library for TheKey OAuth based off AppAuth'

  s.homepage         = 'https://github.com/CruGlobal/TheKeyOAuthSwift'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'ryan.t.carlson@cru.org' => 'ryan.t.carlson@cru.org' }
  s.source           = { :git => 'https://github.com/CruGlobal/TheKeyOAuthSwift.git', :tag => s.version.to_s }

  s.ios.deployment_target = '8.0'

  s.source_files = 'TheKeyOAuthSwift/Classes/**/*'  

  s.dependency 'GTMAppAuth'
end
