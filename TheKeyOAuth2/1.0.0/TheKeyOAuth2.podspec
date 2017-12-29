Pod::Spec.new do |s|
  s.name         = "TheKeyOAuth2"
  s.version      = "1.0.0"
  s.summary      = "TheKey OAuth2 Client Library."
  s.homepage     = "http://thekey.me/"
  s.license      = { :type => 'Modified BSD', :file => 'LICENSE.txt' }
  s.author       = { "Ryan Carlson" => "ryan.t.carlson@cru.org" }
  s.source       = { :git => "https://github.com/CruGlobal/TheKeyOAuth2.git", :tag => "1.0.0.rc2" }
  s.platform     = :ios, '9.0'
  s.source_files = 'TheKeyOAuth2/*.{h,m,swift}'
  s.public_header_files = "TheKeyOAuth2/TheKeyOAuth2Client.h", "TheKeyOAuth2/TheKeyOAuth2LoginViewController.h", "TheKeyOAuth2/TheKeyOAuth2.h"
  s.requires_arc = true
  s.dependency 'GTMOAuth2', '~> 1.1.1'
  s.resource_bundle = { 'TheKey' => 'TheKeyOAuth2/Resources/*.png' }
end

