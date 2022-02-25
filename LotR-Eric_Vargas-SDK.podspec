#
# Be sure to run `pod lib lint LotR-Eric_Vargas-SDK.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'LotR-Eric_Vargas-SDK'
  s.version          = '1.0.0'
  s.summary          = 'Wrapper API for https://the-one-api.dev/.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
  Wrapper API for https://the-one-api.dev/. Built for iOS.
                       DESC

  s.homepage         = 'https://github.com/rcvrgs/LotR-Eric_Vargas-SDK'
  s.license          = { :type => 'Apache 2.0', :file => 'LICENSE' }
  s.author           = { 'Eric Vargas' => 'eric.vargas.mx@gmail.com' }
  s.source           = { :git => 'https://github.com/rcvrgs/LotR-Eric_Vargas-SDK.git', :tag => s.version.to_s }

  s.ios.deployment_target = '12.0'

  s.source_files = 'LotR-Eric_Vargas-SDK/Classes/**/*'
  
  # s.resource_bundles = {
  #   'LotR-Eric_Vargas-SDK' => ['LotR-Eric_Vargas-SDK/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
