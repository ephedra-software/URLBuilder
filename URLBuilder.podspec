Pod::Spec.new do |spec|
    spec.name             = 'URLBuilder'
    spec.version          = '1.0.3'
    spec.summary          = 'Simple abstraction for URLComponents for ease to use'
    spec.homepage         = 'https://github.com/ephedra-software/URLBuilder'
    spec.license          = { :type => 'MIT', :file => 'LICENSE' }
    spec.author           = { 'Erik Basargin' => 'basargin.erik@gmail.com' }
    spec.social_media_url = 'https://twitter.com/Puasonych'
    spec.source           = { :git => 'https://github.com/ephedra-software/URLBuilder.git', :tag => spec.version }
    spec.swift_version    = '5.0'

    spec.ios.deployment_target = '8.0'

    spec.source_files = 'Sources/URLBuilder/**/*.swift'
    spec.framework    = 'Foundation'
end
