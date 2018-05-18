
Pod::Spec.new do |s|
s.name         = "YCPopover"
s.version      = "1.0.0"
s.ios.deployment_target = '7.0'
s.summary      = "a popover from bottom or center."
s.homepage     = "https://github.com/WellsYC/YCPopover"
s.license      = { :type => "MIT", :file => "LICENSE" }
s.author       = { "WellsYC" => "461620115@qq.com" }
#s.social_media_url   = "http://weibo.com/u/5348162268"
s.source       = { :git => "https://github.com/WellsYC/YCPopover.git", :tag => s.version }
s.source_files  = "*/YCPopoverModule/*.{h,m}"
#s.resources   = "YCPopover/YJSettingTableView.bundle"
s.requires_arc = true
end

