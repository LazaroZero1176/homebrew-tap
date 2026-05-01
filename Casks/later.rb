cask "later" do
  version "2.7.5"
  sha256 "9f0ab9bc81d86dea6d9578369a2167f20b44f56c264f005127492e6cc64e64a3"

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
