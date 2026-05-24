cask "vegha" do
  url "https://github.com/Vegha-AI/Vegha/releases/download/v#{version}/Vegha-osx-arm64.pkg"
  sha256 "2eae9570f2a6a15294874f054864cd142d40d9cfe88722dbf0b5e7e86f5eaa7a"
    
  version "0.1.0" 
  
  name "Vegha"
  desc "Cross-platform, native, MIT-licensed API testing desktop app"
  homepage "https://github.com/Vegha-AI/Vegha"

  pkg "Vegha-osx-arm64.pkg"  
  
  uninstall pkgutil: "com.vegha.vegha"  

  zap trash: [
    "~/Library/Application Support/Vegha",
    "~/Library/Preferences/com.vegha.vegha.plist",
    "~/Library/Caches/com.vegha.vegha",
  ]
end
