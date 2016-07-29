#
# Be sure to run `pod lib lint WSKit.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'WSKit'
  s.version          = '0.1.1'
  s.summary          = 'Waysay Mobile App CMS and Events'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  #s.description      = <<-DESC
#TODO: Add long description of the pod here.
 #                      DESC

  s.homepage         = 'http://www.waysay.com'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Matt Compton' => 'matt.compton@brandinbrand.com' }
  s.source           = { :git => 'https://github.com/comptonmc/WSKit.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'
  s.requires_arc = true
  s.platform = :ios, '8.0'

  s.source_files = 'WSKit/Classes/*.*' 
  s.resources = 'WSKit/Assets/*.xcassets'

  s.dependency 'AWSCore'
  s.dependency 'AWSKinesis'
  s.dependency "youtube-ios-player-helper", "0.1.4"
  s.dependency 'SDWebImage', '~>3.7'
  s.dependency 'SlackTextViewController', '= 1.9.1'
  s.dependency 'HTHorizontalSelectionList', '~> 0.6.2'
  s.dependency 'MZFayeClient'


#  s.subspec 'core' do |core|
#	core.resources = 'WSKit/Assets/*.xcassets'
#	core.source_files = 'WSKit/core/*.*'
#        core.dependency 'AWSCore'
#	core.dependency 'AWSKinesis'
#	core.dependency 'WSKit/controllers'
#  end

#  s.subspec 'ui' do |ui|
#	ui.dependency 'WSKit/core'
#        ui.source_files = 'WSKit/ui/*.*'
#
#	ui.dependency "youtube-ios-player-helper", "0.1.4"
#  end  
#
#  s.subspec 'controllers' do |controllers|
#
#        controllers.dependency 'WSKit/ui'
#        controllers.source_files = 'WSKit/controllers/*.*'
#        controllers.dependency 'SDWebImage', '~>3.7'
#        controllers.dependency 'SlackTextViewController', '= 1.9.1'
#	controllers.dependency 'HTHorizontalSelectionList', '~> 0.6.2'
#	controllers.dependency 'MZFayeClient'
#  end

  s.pod_target_xcconfig = { 'ENABLE_STRICT_OBJC_MSGSEND' => 'NO', 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES' }
  s.xcconfig = { 'ENABLE_STRICT_OBJC_MSGSEND' => 'NO' }

#  post_install do |installer|
#    installer.pods_project.build_configuration_list.build_configurations.each do |configuration|
#        configuration.build_settings['CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES'] = 'YES'
#    end
#  end

end
