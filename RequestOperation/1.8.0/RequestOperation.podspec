
Pod::Spec.new do |s|
    s.name = 'RequestOperation'
    s.version = '1.8.0'
    s.summary = 'Wrapper around URLSession.'
    s.description = 'A swift package to facilitate in creation of URLRequests (RequestBuilder) and provides an Operation (RequestOperation) for submitting requests from an OperationQueue. Completed RequestOperations will provide a RequestResponse object with some details about the completed request.'
    s.homepage = 'https://github.com/CruGlobal/request-operation-ios'
    s.license = { :type => 'MIT', :file => 'LICENSE' }
    s.author = { 'Levi Eggert' => 'levi.eggert@cru.org' }
    s.source = { :git => 'https://github.com/CruGlobal/request-operation-ios.git', :tag => s.version.to_s }
  
    s.swift_version = '5.7'
    s.platforms = {
        "ios": "13.0"
    }
  
    s.source_files = 'Sources/**/*.{swift}'    
  end
  