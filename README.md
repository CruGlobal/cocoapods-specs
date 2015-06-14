# CruGlobal CococaPods Specs
Repository of Cocoapod specs maintained by CruGlobal for CruGlobal apps

### Install CocoaPods and add CruGlobal repo
```shell
sudo gem install cocoapods
pod setup
pod repo add cruglobal https://github.com/CruGlobal/cocoapods-specs.git
```

### Use CruGlobal Pods in project Podfile
```ruby
source 'https://github.com/CocoaPods/Specs.git'
source 'https://github.com/CruGlobal/cocoapods-specs.git'

platform :ios, '6.0'

pod 'GTViewController', '~> 3.1'
```
