require 'json'

package = JSON.parse(File.read('package.json'))

Pod::Spec.new do |s|
  s.name         = 'QRScanner'
  s.version      = package['version']
  s.summary      = package['description']
  s.license      = package['license']
  #s.dependency   "react-native-camera"
  
  s.authors      = package['author']
  s.homepage     = package['homepage']
  s.platform     = :ios, '9.0'
  s.ios.deployment_target = '9.0'
  s.tvos.deployment_target = "9.0"

  s.source       = { :git => '[https://github.com/abudahsh/react-native-qr-scanner.git]', :branch => 'add-podspec' }
  s.source_files  = 'ios/**/*.{h,m,mm}'

  s.dependency 'React'
end