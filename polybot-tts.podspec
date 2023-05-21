require "json"

package = JSON.parse(File.read(File.join(__dir__, "package.json")))

Pod::Spec.new do |s|
  s.name         = "polybot-tts"
  s.version      = package["version"]
  s.summary      = package["description"]
  s.authors      = { "Conrad Guest" => "conradwrg@outlook.com" }
  s.description  = <<-DESC
                  polybot-tts
                   DESC
  s.homepage     = "https://github.com/PolybotApp/polybot-tts"
  s.source       = { :git => "https://github.com/PolybotApp/polybot-tts.git" }
  # brief license entry:
  s.license      = "MIT"
  # optional - use expanded license entry instead:
  # s.license    = { :type => "MIT", :file => "LICENSE" }
  s.platforms    = { :ios => "9.3" }
  s.ios.deployment_target  = '9.3'

  s.source_files = "ios/**/*.{h,c,m,swift}"
  s.requires_arc = true

  s.framework = 'AVFoundation'
  s.dependency "React"
  s.dependency "MicrosoftCognitiveServicesSpeech-iOS", "~> 1.9"
end

