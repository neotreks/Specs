Pod::Spec.new do |m|

  version = '0.1.2'

  m.name    = 'AccuTerraSDKCamera'
  m.version = version

  m.summary           = 'AccuTerra SDK Camera iOS.'
  m.description       = 'AccuTerra SDK Camera iOS'
  m.homepage          = 'http://www.accuterra.com/'
  m.author            = { 'NeoTreks' => 'info@neotreks.com' }
  m.documentation_url = 'http://www.accuterra.com/'
  m.license           = { :type => 'Commercial', :text => 'BY DOWNLOADING THE ACCUTERRA SDK FRAMEWORK, YOU ARE AGREEING TO THE TERMS AND CONDITIONS OF THE ACCUTERRA SDK LICENSE AGREEMENT LOCATED AT https://sdk.accuterra.com.  IF YOU DO NOT AGREE TO THE TERMS AND CONDITIONS OF THE ACCUTERRA SDK LICENSE AGREEMENT, YOU ARE NOT AUTHORIZED TO AND YOU MAY NOT DOWNLOAD THE ACCUTERRA TELEMETRY FRAMEWORK.' }

  m.source = {
    :http => "https://distribution.accuterra.com/com/accuterra/accuterra-ios-camera/#{version}/accuterra-ios-camera-#{version}.zip",
    :flatten => true
  }

  m.platform              = :ios
  m.ios.deployment_target = '15.0'
  m.swift_version = '5.3.2'

  m.dependency 'AccuTerraSDKCommon', '0.1.8'

  m.requires_arc = true

  m.vendored_frameworks = 'AccuTerraSDKCamera.xcframework'
  m.module_name = 'AccuTerraSDKCamera'

  m.preserve_path = '**/*.bcsymbolmap'

end

