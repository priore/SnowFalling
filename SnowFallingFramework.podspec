Pod::Spec.new do |s|
  s.name = 'SnowFallingFramework'
  s.version = '1.4.1'
  s.summary = 'A nice iOS framework to able you to create iPhone and iPad Apps with snow falling effects.'
  s.license = { :type => 'Shareware', :file => 'LICENSE.txt' }
  s.authors = { 'Danilo Priore' => 'support@prioregroup.com' }
  s.homepage = 'https://github.com/priore/SnowFalling'
  s.social_media_url = 'https://twitter.com/danilopriore'
  s.source = { git: 'https://github.com/priore/SnowFalling.git', :tag => "v#{s.version}" }
  s.xcconfig = { 'HEADER_SEARCH_PATHS' => "${PODS_ROOT}/#{s.name}/**" }
  s.frameworks = 'Foundation', 'QuartzCore', 'UIKit'
  
  s.ios.platform             = '5.1'
  s.ios.deployment_target    = '5.1'
  s.ios.preserve_paths       = 'SnowFalling.framework'
  s.ios.public_header_files  = 'SnowFalling.framework/Versions/A/Headers/*.h'
  s.ios.vendored_frameworks  = 'SnowFalling.framework'
end
