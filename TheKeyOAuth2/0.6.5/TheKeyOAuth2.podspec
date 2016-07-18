Pod::Spec.new do |s|
  s.name         = "TheKeyOAuth2"
  s.version      = "0.6.5"
  s.summary      = "TheKey OAuth2 Client Library."
  s.homepage     = "http://thekey.me/"
  s.license      = { :type => 'Modified BSD', :file => 'LICENSE.txt' }
  s.author       = { "Brian Zoetewey" => "brian.zoetewey@ccci.org" }
  s.source       = { :git => "git@github.com:GlobalTechnology/TheKeyOAuth2.git", :tag => "0.6.5" }
  s.platform     = :ios, '7.0'
  s.source_files = 'TheKeyOAuth2/*.{h,m}'
  s.public_header_files = "TheKeyOAuth2/TheKeyOAuth2Client.h", "TheKeyOAuth2/TheKeyOAuth2LoginViewController.h"
  s.requires_arc = true
  s.dependency 'GTMOAuth2', '~> 1.1.1'
  s.resource_bundle = { 'TheKey' => 'TheKeyOAuth2/Resources/*.png' }
end

