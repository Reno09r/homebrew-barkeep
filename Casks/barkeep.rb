cask "barkeep" do
  version "0.1.0"
  sha256 "77911969231b739b6ec558b3d05f55960d9cbec6ab731f0015e4dcdb0f0ef7f5"

  url "https://github.com/Reno09r/BarKeep/releases/download/v#{version}/BarKeep.dmg"
  name "BarKeep"
  desc "Lightweight macOS menu bar manager with floating HUD panel"
  homepage "https://github.com/Reno09r/BarKeep"

  depends_on macos: :sonoma

  app "BarKeep.app"

  zap trash: [
    "~/Library/Caches/com.reno.barkeep",
    "~/Library/HTTPStorages/com.reno.barkeep",
    "~/Library/Logs/BarKeep.log",
    "~/Library/Preferences/com.reno.barkeep.plist",
  ]
end
