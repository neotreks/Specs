Pod::Spec.new do |m|

  version = '0.1.1'

  m.name    = 'AccuTerraSDK'
  m.version = version

  m.summary           = 'AccuTerra iOS SDK.'
  m.description       = 'AccuTerra iOS SDK with map and trails features.'
  m.homepage          = 'http://www.accuterra.com/'
  m.author            = { 'NeoTreks' => 'info@neotreks.com' }
  m.documentation_url = 'http://www.accuterra.com/'
  m.license           = { :type => 'Commercial', :text => 'BY DOWNLOADING THE ACCUTERRA SDK FRAMEWORK, YOU ARE AGREEING TO THE TERMS AND CONDITIONS OF THE ACCUTERRA SDK LICENSE AGREEMENT LOCATED AT https://sdk.accuterra.com.  IF YOU DO NOT AGREE TO THE TERMS AND CONDITIONS OF THE ACCUTERRA SDK LICENSE AGREEMENT, YOU ARE NOT AUTHORIZED TO AND YOU MAY NOT DOWNLOAD THE ACCUTERRA SDK FRAMEWORK.' }

  m.source = {
    :http => "https://distribution.accuterra.com/com/accuterra/accuterra-ios-sdk/#{version}/accuterra-ios-sdk-#{version}.zip",
    :flatten => true
  }

  m.platform              = :ios
  m.ios.deployment_target = '10.0'
  m.swift_version = '5.0'

  m.dependency 'Alamofire', '~> 4.9.0'
  m.dependency 'AlamofireObjectMapper', '~> 5.2.0'
  m.dependency 'ObjectMapper', '~> 3.4.2'
  m.dependency 'ReachabilitySwift', '~> 4.3.1'
  m.dependency 'GRDB.swift', '~> 4.7.0'
  m.dependency 'AccuTerra-Mapbox-iOS-SDK', '~> 5.7.0'
  m.dependency 'GzipSwift', '~> 5.1.1'
  
  # AWS
  $awsVersion = '~> 2.12.3'
  m.dependency 'AWSMobileClient', $awsVersion
  m.dependency 'AWSCore', $awsVersion
  m.dependency 'AWSS3', $awsVersion
  
  m.requires_arc = true

  m.vendored_frameworks = 'AccuTerraSDK.framework'
  m.module_name = 'AccuTerraSDK'

  m.preserve_path = '**/*.bcsymbolmap'

end
