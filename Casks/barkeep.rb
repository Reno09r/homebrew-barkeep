cask "barkeep" do
  version "0.1.0"
  sha256 "bdaa23f8b3e169eeb817c697d5db78505cd966c2e3806cb089d4356d93640637"

  url "https://github.com/Reno09r/BarKeep/releases/download/v#{version}/BarKeep.dmg"
  name "BarKeep"
  desc "Lightweight macOS menu bar manager with floating HUD panel"
  homepage "https://github.com/Reno09r/BarKeep"

  depends_on macos: :sonoma

  app "BarKeep.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", "#{appdir}/BarKeep.app"],
                   sudo: false
  end

  zap trash: [
    "~/Library/Caches/com.reno.barkeep",
    "~/Library/HTTPStorages/com.reno.barkeep",
    "~/Library/Logs/BarKeep.log",
    "~/Library/Preferences/com.reno.barkeep.plist",
  ]

  caveats <<~EOS
    BarKeep is signed with a local developer certificate.
    If macOS Gatekeeper blocks it from opening, run:
      xattr -cr /Applications/BarKeep.app
  EOS
end
