Pod::Spec.new do |m|

  version = '6.2.0'

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

  m.resources = 'MapLibre.bundle'
  m.platform              = :ios
  m.ios.deployment_target = '9.0'

  m.requires_arc = true

  m.vendored_frameworks = 'MapLibre.xcframework'
  m.module_name = 'MapLibre'

  m.preserve_path = '**/*.bcsymbolmap'

end
