Pod::Spec.new do |s|
  s.name             = 'CoreLocationDemo'
  s.version          = '0.1.0'
  s.summary          = 'CLLocationManager Singleton in Swift4 using Completion Blocks'
 
  s.description      = <<-DESC
This is basically for fetching user current location, In this example Singleton class use for share location service in swift4. This class will auto update location when user change current location using Completion Blocks with error handlling as well.
                       DESC
 
  s.homepage         = 'https://github.com/MandeepSingh1/CoreLocationDemo'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Mandeep Singh' => 'mandeep.singh671@gmail.com' }
  s.source           = { :git => 'https://github.com/MandeepSingh1/CoreLocationDemo', :tag => s.version.to_s }
 
  s.ios.deployment_target = '10.0'
  s.pod_target_xcconfig = { 'SWIFT_VERSION' => '4.0' }
  s.source_files = 'CoreLocationDemo/CurrentLocationSingleton/FetchLocationSingleton.swift'
 
end