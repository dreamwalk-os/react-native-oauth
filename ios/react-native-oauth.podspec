require 'json'

package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|
  s.name         = "react-native-oauth"
  s.version      = package['version']
  s.summary      = "React Native OAuth"

  s.authors      = { "intelligibabble" => "test@test.com" }
  s.homepage     = "https://github.com/fullstackreact/react-native-oauth#readme"
  s.license      = "MIT"
  s.platform     = :ios, "8.0"

  s.source       = { :git => "https://github.com/fullstackreact/react-native-oauth.git", :tag=> "v#{s.version}" }
  s.source_files  = "ios/OAuthManager/**/*.{h,m}", "ios/OAuthManager/*.{h,m}"

  s.dependency 'React'
end
