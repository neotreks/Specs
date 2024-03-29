Pod::Spec.new do |m|

  version = '5.8.0.6'

  m.name    = 'AccuTerra-Mapbox-iOS-SDK'
  m.version = version

  m.summary           = 'Open source vector map solution for iOS with full styling capabilities.'
  m.description       = 'Open source, OpenGL-based vector map solution for iOS with full styling capabilities and Cocoa Touch APIs.'
  m.homepage          = 'https://docs.mapbox.com/ios/maps/'
  m.license           = { :type => 'BSD', :file => 'LICENSE.md' }
  m.author            = { 'Mapbox' => 'mobile@mapbox.com' }
  m.screenshot        = "https://docs.mapbox.com/ios/api/maps/5.7.0/img/screenshot.png"
  m.social_media_url  = 'https://twitter.com/mapbox'
  m.documentation_url = 'https://docs.mapbox.com/ios/api/maps/'

  m.source = {
    :http => "https://distribution.accuterra.com/com/accuterra/mapboxsdk/accuterra-mapbox-ios-sdk/#{version}/accuterra-mapbox-ios-sdk-#{version}-dynamic.zip",
    :flatten => true
  }

  m.platform              = :ios
  m.ios.deployment_target = '9.0'

  m.requires_arc = true

  m.vendored_frameworks = 'dynamic/Mapbox.framework'
  m.module_name = 'Mapbox'

  m.preserve_path = '**/*.bcsymbolmap'

  m.dependency 'MapboxMobileEvents', '0.10.2'

end
