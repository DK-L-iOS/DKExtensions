Pod::Spec.new do |s|
  s.name             = "DKExtensions"
  s.version          = "0.0.2"
  s.license          = 'MIT'
  s.summary          = "An easy use extension and Custom of UIView."
  s.description      = <<-DESC
                       A easy use extension of UIView.
                       * Markdown format.
                       * Don't worry about the indent, we strip it!
                       DESC
  s.authors          = "lidengke"
  s.homepage 	     = "https://github.com/DK-L-iOS/DKExtensions"
  s.source           = { :git => "https://github.com/DK-L-iOS/DKExtensions.git", :tag => s.version.to_s }
  s.platform         = :ios, '7.0'
  s.requires_arc     = true
  s.source_files     = 'DKExtensions/**/*.{h,m}'
  s.resource_bundles = {
    'DKExtensions' => ['DKExtensions/DKProgressHUD.bundle/*.png']
  }

  s.public_header_files = 'DKExtensions/**/*.h'
  s.dependency 'MBProgressHUD', '~> 0.9.2'
end