cask "multilink" do
  version "0.1.0-alpha.2"
  sha256 "c5f41098144b01d8301f2f4b6da70f01f217390926928f53ea2403bbe0f0d87d"

  url "https://github.com/pallewela/multilink/releases/download/v#{version}/Multilink-#{version}-macos.dmg"
  name "Multilink"
  desc "Menu bar app that balances connections across network links"
  homepage "https://github.com/pallewela/multilink"

  depends_on arch: :arm64
  depends_on macos: :ventura

  app "Multilink.app"

  # Not notarized yet: clear the quarantine flag so Gatekeeper lets it open. `postflight` is
  # deprecated in Homebrew 7 but no declarative step clears xattrs; drop this once notarized.
  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-dr", "com.apple.quarantine", "#{appdir}/Multilink.app"]
  end

  uninstall launchctl: "com.multilink.bar.daemon",
            quit:      "com.multilink.bar"
end
