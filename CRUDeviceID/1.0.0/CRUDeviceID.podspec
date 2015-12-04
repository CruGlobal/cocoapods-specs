#
# Be sure to run `pod lib lint CRUDeviceID.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "CRUDeviceID"
  s.version          = "1.0.0"
  s.summary          = "A Unique Device ID that can be used across Cru iOS Apps."
  s.description      = <<-DESC
                       To get the ID use [CRUDeviceID UUIDString].

                       Sending the ID with your API requests will help your API to pull rich data about your users from Global Registry. Such data can be used to provide sophisticated features for your users.
                       DESC

  s.homepage         = "https://github.com/CruGlobal/CRUDeviceID"
  s.license          = 'MIT'
  s.author           = { "Harro" => "michael.harrison@cru.org" }
  s.source           = { :git => "https://github.com/CruGlobal/CRUDeviceID.git", :tag => s.version.to_s }

  s.platform     = :ios, '6.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes/*'

  s.public_header_files = 'Pod/Classes/*.h'
  s.dependency 'UICKeyChainStore', '~> 2.1'
end
