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

pod 'GTViewController', '~> 4.0'
```

### How to add a pod to this repo

You do not need to commit or create a PR for this repo, CocoaPods handles the creation of these folders for the podspec.

First, if you're working with an existing pod that Cru is now going to maintain, fork the repository to CruGlobal and then clone it on your machine.

Go to the repo on your local and add the spec file to the root if it doesn't already exist.

The tag is key for Cocoa Pods to know where the code resides on github. 

If the repo is an existing pod and you want this version on cruglobal to be referenced instead of the original, create a new release and give it a tag name version greater than the existing (the practice has been to use numbers such as 1.0, 2.0, etc.) That way Cocoa Pods will pick the CruGlobal version rather than the existing pod out in the main CocoaPods spec. Make sure the tag is referenced in the version # and tag # for the podspec.

Open the terminal and go to the root path of the repo for the pod, run the command below

```ruby
$ pod repo push cruglobal SPEC_NAME.podspec
```

This will add the podspec file to this repo and make it so if the CruGlobal podspec is added to a podfile for a project, these pods will be available to be added to that podfile.

For more information on private pod specs see [Private Pods](https://guides.cocoapods.org/making/private-cocoapods.html). This goes through the entire process to make a private spec but since this is already created for cruglobal, the main focus is on step 3.