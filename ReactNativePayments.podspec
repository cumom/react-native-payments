require "json"

Pod::Spec.new do |s|
  package = JSON.parse(File.read(File.join(File.dirname(__FILE__), 'package.json')))
  s.name         = 'ReactNativePayments'
  s.version      = package['version']
  s.summary      = 'react-native-payments'
  s.homepage     = "https://github.com/naoufal/react-native-payments"
  s.license      = 'MIT'
  s.authors      = 'Naoufal Kadhom', 'Andrej Badin'
  s.source       = { :git => "https://github.com/naoufal/react-native-payments.git", :tag => "#{s.version}" }
  s.source_files  = 'lib/ios/*.{h,m}'
  s.requires_arc = true

end
