cask "later" do
  version "2.7.6"
  sha256 "549b2785725cbe8c78a3fd12c66561061512071bb8d27cc1a0f8df08ea9a363e"

  url "https://github.com/LazaroZero1176/later/releases/download/v#{version}/Later-#{version}.dmg"
  name "Later"
  desc "Save and restore app sessions from the menu bar"
  homepage "https://github.com/LazaroZero1176/later"

  depends_on macos: ">= :ventura"

  app "Later.app"

  zap trash: [
    "~/Library/Application Support/alyssaxuu.Later",
    "~/Library/Preferences/alyssaxuu.Later.plist",
  ]

  caveats <<~EOS
    Later is currently ad-hoc signed. If macOS reports that the app is damaged,
    remove the quarantine attribute after installation:
      xattr -dr com.apple.quarantine /Applications/Later.app
  EOS
end
