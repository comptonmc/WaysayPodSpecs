#
# Be sure to run `pod lib lint WSKit.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'WSKit'
  s.version          = '0.2.8'
  s.summary          = 'Waysay Mobile App CMS and Events'

  s.homepage         = 'http://www.waysay.com'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Matt Compton' => 'matt.compton@brandingbrand.com' }
  s.source           = { :git => 'ssh://git@github.com/brandingbrand/WSKit.git', :tag => s.version.to_s }

  s.ios.deployment_target = '8.0'
  s.requires_arc = true
  s.platform = :ios, '8.0'

  s.source_files = 'WSKit/Classes/*.*' 
  s.resources = 'WSKit/Assets/*'

  s.dependency 'AWSCore'
  s.dependency 'AWSKinesis'
  s.dependency "youtube-ios-player-helper", "~> 0.1.4"
  s.dependency 'SDWebImage', '~>3.7'
  s.dependency 'SlackTextViewController', '= 1.9.1'
  s.dependency 'HTHorizontalSelectionList', '~> 0.6.2'
  s.dependency 'MZFayeClient'

  s.pod_target_xcconfig = { 'ENABLE_STRICT_OBJC_MSGSEND' => 'NO', 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES' }
  s.xcconfig = { 'ENABLE_STRICT_OBJC_MSGSEND' => 'NO' }

end
