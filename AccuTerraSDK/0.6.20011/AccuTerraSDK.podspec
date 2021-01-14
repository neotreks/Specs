Pod::Spec.new do |m|

  version = '0.6.20011'

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
  m.swift_version = '5.3'

  m.dependency 'Alamofire', '5.0.1'
  m.dependency 'ObjectMapper', '3.5.1'
  m.dependency 'ReachabilitySwift', '5.0.0'
  m.dependency 'GRDB.swift', '4.14.0'
  m.dependency 'AccuTerra-Mapbox-iOS-SDK', '5.7.0.8'
  m.dependency 'GzipSwift', '5.1.1'
  m.dependency 'Turf', '0.5.0'
  m.dependency 'SSZipArchive', '2.2.3'
  m.dependency 'Surge', '2.3.0'
  
  # AWS
  $awsVersion = '2.13.0'
  m.dependency 'AWSMobileClient', $awsVersion
  m.dependency 'AWSCore', $awsVersion
  m.dependency 'AWSS3', $awsVersion
  
  m.requires_arc = true

  m.vendored_frameworks = 'AccuTerraSDK.framework'
  m.module_name = 'AccuTerraSDK'
  m.resources = 'AccuTerra.bundle'

  m.preserve_path = '**/*.bcsymbolmap'

end
