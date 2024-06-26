Pod::Spec.new do |s|
  s.name     = 'AccuTerraGRDB.swift'
  s.version  = '6.26.0'
  
  s.license  = { :type => 'MIT', :file => 'LICENSE' }
  s.summary  = 'A toolkit for SQLite databases, with a focus on application development.'
  s.homepage = 'https://github.com/groue/GRDB.swift'
  s.author   = { 'Gwendal Roué' => 'gr@pierlis.com' }
  s.source = {
    "git": "https://github.com/neotreks/GRDB.swift.git",
    "tag": "AccuTerrav6.26.0"
  }
  s.module_name = 'GRDB'
  s.resource_bundles = {
    "GRDB": [
      "GRDB/PrivacyInfo.xcprivacy"
    ]
  }
  s.swift_versions = ['5.7']
  s.ios.deployment_target = '14.0'
  s.osx.deployment_target = '10.13'
  s.watchos.deployment_target = '4.0'
  s.tvos.deployment_target = '11.0'
  s.default_subspec  = 'SQLCipher'
  
  s.subspec 'standard' do |ss|
    ss.source_files = 'GRDB/**/*.swift', 'Support/grdb_config.h'
    ss.framework = 'Foundation'
    ss.library = 'sqlite3'
  end
  
  s.subspec 'SQLCipher' do |ss|
    ss.source_files = 'GRDB/**/*.swift', 'Support/SQLCipher_config.h'
    ss.framework = 'Foundation'
    ss.dependency 'AccuTerraSQLCipher', '4.5.6'
    ss.xcconfig = {
      'OTHER_SWIFT_FLAGS' => '$(inherited) -D SQLITE_HAS_CODEC -D GRDBCIPHER -D SQLITE_ENABLE_FTS5',
      'OTHER_CFLAGS' => '$(inherited) -DSQLITE_HAS_CODEC -DGRDBCIPHER -DSQLITE_ENABLE_FTS5',
      'GCC_PREPROCESSOR_DEFINITIONS' => '$(inherited) SQLITE_HAS_CODEC=1 GRDBCIPHER=1 SQLITE_ENABLE_FTS5=1'
    }
  end
end
