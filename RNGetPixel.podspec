require 'json'
package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|

  s.name           = "RNGetPixel"
  s.version        = package['version']
  s.summary        = package['description']
  s.homepage       = "https://github.com/alicansa/react-native-keychain"
  s.license  = package['license']
  s.author   = package['author']
  s.ios.deployment_target = '9.0'
  s.tvos.deployment_target = '9.0'
  s.source         = { :git => "https://github.com/alicansa/react-native-keychain.git", :tag => "v#{s.version}" }
  s.source_files   = 'ios/RNGetPixel/*.{h,m}'
  s.preserve_paths = "**/*.js"
  s.dependency 'React'

end