Pod::Spec.new do |m|

  version = '5.12.1'

  m.name    = 'AccuTerra-MapLibre-iOS-SDK'
  m.version = version

  m.summary           = 'Open source vector map solution for iOS with full styling capabilities. Based on Mapbox SDK, maintained by MapLibre.'
  m.description       = 'Open source, OpenGL-based vector map solution for iOS with full styling capabilities and Cocoa Touch APIs.'
  m.homepage          = 'https://docs.mapbox.com/ios/maps/'
  m.license           = { :type => 'BSD', :file => 'LICENSE.md' }
  m.author            = { 'MapLibre' => 'https://github.com/MapLibre' }
  m.documentation_url = 'https://github.com/MapLibre'

  m.source = {
    :http => "https://distribution.accuterra.com/com/accuterra/maplibresdk/accuterra-maplibre-ios-sdk/#{version}/accuterra-maplibre-ios-sdk-#{version}-dynamic.zip",
    :flatten => true
  }

  m.platform              = :ios
  m.ios.deployment_target = '13.0'

  m.requires_arc = true

  m.vendored_frameworks = 'Mapbox.xcframework'
  m.module_name = 'Mapbox'

  m.preserve_path = '**/*.bcsymbolmap'

end
