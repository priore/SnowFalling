Pod::Spec.new do |s|
    s.name                  = 'SnowFallingFramework'
    s.version               = '1.4.3'
    s.summary               = 'A nice iOS framework to able you to create iPhone and iPad Apps with snow falling effects.'
    s.license               = 'MIT'
    s.authors               = { 'Danilo Priore' => 'support@prioregroup.com' }
    s.homepage              = 'https://github.com/priore/SnowFalling'
    s.social_media_url      = 'https://twitter.com/danilopriore'
    s.source                = { git: 'https://github.com/priore/SnowFalling.git', :tag => "v#{s.version}" }
    s.ios.deployment_target = '5.1.1'
    s.requires_arc          = true
    s.source_files          = 'SnowFalling/Classes/SnowFalling.{h,m}'
    s.ios.framework         = 'Foundation', 'QuartzCore', 'UIKit'
end
