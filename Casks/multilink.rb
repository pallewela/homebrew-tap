cask "multilink" do
  version "0.1.0-alpha.6"
  sha256 "22e71371e7ef7e304d8ef18a6a8f4f8dae00804482e7680021fc86ee68ffaa4e"

  url "https://github.com/pallewela/multilink/releases/download/v#{version}/Multilink-#{version}-macos.dmg"
  name "Multilink"
  desc "Menu bar app that balances connections across network links"
  homepage "https://github.com/pallewela/multilink"

  depends_on arch: :arm64
  depends_on macos: :ventura

  app "Multilink.app"

  # Not notarized yet: clear the quarantine flag so Gatekeeper lets it open; drop once notarized.
  postflight_steps do
    run "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "{{appdir}}/Multilink.app"]
  end

  uninstall launchctl: "com.multilink.bar.daemon",
            quit:      "com.multilink.bar"
end
