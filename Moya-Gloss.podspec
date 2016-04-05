#
# Be sure to run `pod lib lint Moya-Gloss.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "Moya-Gloss"
  s.version          = "0.1.0"
  s.summary          = "Convenience Gloss bindings for Moya."
  s.description      = <<-EOS
    [Gloss](https://github.com/hkellaway/Gloss) bindings for
    [Moya](https://github.com/Moya/Moya) for fabulous JSON serialization.
    [RxSwift](https://github.com/ReactiveX/RxSwift/) bindings also included.
    Instructions on how to use it are in
    [the README](https://github.com/spxrogers/Moya-Gloss).
                       EOS

  s.homepage         = "https://github.com/spxrogers/Moya-Gloss"
  s.license          = { :type => "MIT", :file => "LICENSE" }
  s.author           = { "steven rogers" => "spxrogers@gmail.com" }
  s.source           = { :git => "https://github.com/spxrogers/Moya-Gloss.git", :tag => s.version.to_s }
  s.social_media_url = "https://twitter.com/spxrogers"

  s.platform     = :ios, '8.0'
  s.requires_arc = true

  s.default_subspec = "Core"

  s.subspec "Core" do |ss|
    ss.source_files  = "Source/*.swift"
    ss.dependency "Moya"
    ss.dependency "Gloss", "~> 0.7"
    ss.framework  = "Foundation"
  end

  s.subspec "RxSwift" do |ss|
    ss.source_files = "Source/RxSwift/*.swift"
    ss.dependency "Moya/RxSwift"
    ss.dependency "Moya-Gloss/Core"
    ss.dependency "RxSwift", "~> 2.0"
  end

end