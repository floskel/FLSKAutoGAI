Pod::Spec.new do |s|
  s.name             = "FLSKAutoGAI"
  s.version          = "0.1.2"
  s.summary          = "Automatic tracking with GAI of all UIViewController."
  s.description      = "Automatic UIViewController tracking in GAI without subclassing. 
  Using Google Analytics for iOS requires subclassing of all UIViewControllers in order to automatically track them. This is annoying in general and makes UITableViewController/UICollectionViewController unusable. This pod makes all UIViewControllers automatically tracked in GAI with their class name as the default value. 
  Setup GAI as normally and: #import <UIViewController+FLSKAutoGAI.h> in the view controllers that should be tracked. 
  " 
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
