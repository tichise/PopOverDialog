Pod::Spec.new do |s|
  s.name = 'PopOverDialog'
  s.version = '1.0.0'
  s.license = 'MIT'
  s.summary = 'PopOverDialog is a PopOver style dialog view.'
  s.homepage = 'https://github.com/tichise/PopOverDialog'
  s.social_media_url = 'http://twitter.com/tichise'
  s.author = "Takuya Ichise"
  s.source = { :git => 'https://github.com/tichise/PopOverDialog.git', :tag => s.version }

  s.ios.deployment_target = '8.0'

  s.source_files = 'Sources/*.swift'
  s.requires_arc = true

  s.resource_bundles = {
    'PopOverDialogStoryboards' => [
        'Storyboards/*.storyboard'
    ]
  }
end
