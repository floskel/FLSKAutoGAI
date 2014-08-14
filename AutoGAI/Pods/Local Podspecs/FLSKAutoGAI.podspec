Pod::Spec.new do |s|
  s.name             = "FLSKAutoGAI"
  s.version          = "0.1.0"
  s.summary          = "Automatic tracking with GAI of all UIViewController."
  s.description      = <<-DESC
                       An optional longer description of FLSKAutoGAI

                       * Markdown format.
                       * Don't worry about the indent, we strip it!
                       DESC
  s.homepage         = "https://github.com/floskel/FLSKAutoGAI"
  s.license          = 'MIT'
  s.author           = { "floskel" => "karlo@floskel.com" }
  s.source           = { :git => "https://github.com/floskel/FLSKAutoGAI.git", :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.platform     = :ios, '7.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes'

  s.dependency 'GoogleAnalytics-iOS-SDK', '~> 3.0'
end
