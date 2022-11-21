Pod::Spec.new do |m|

  version = '0.25.14'

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
  m.ios.deployment_target = '14.0'
  m.swift_version = '5.3.2'

  m.dependency 'AccuTerraGRDB.swift', '6.0.0'
  m.dependency 'Alamofire', '5.4.2'
  m.dependency 'ObjectMapper', '4.2.0'
  m.dependency 'ReachabilitySwift', '5.0.0'
  m.dependency 'AccuTerra-MapLibre-iOS-SDK', '5.12.12'
  m.dependency 'GzipSwift', '5.1.1'
  m.dependency 'Turf', '1.2.0'
  m.dependency 'SSZipArchive', '2.2.3'
  m.dependency 'Surge', '2.3.2'
  
  m.requires_arc = true

  m.vendored_frameworks = 'AccuTerraSDK.xcframework'
  m.module_name = 'AccuTerraSDK'
  m.resources = 'AccuTerra.bundle'

  m.preserve_path = '**/*.bcsymbolmap'

end
