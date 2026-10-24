cask "copyisto-trimmer" do
  version "0.1.0"
  sha256 "6a280831bff8d945911d3793e55ca7147aaed003e379ed43b32e9edcc7c829ec"

  url "https://github.com/copyisto/copyisto-trimmer/releases/download/v#{version}/Copyisto-Trimmer.zip"
  name "Copyisto Trimmer"
  desc "Cut the music out of scanned notebooks, one box at a time"
  homepage "https://github.com/copyisto/copyisto-trimmer"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :tahoe

  app "Copyisto Trimmer.app"

  zap trash: [
    "~/Library/Preferences/com.copyisto.trimmer.plist",
    "~/Library/Saved Application State/com.copyisto.trimmer.savedState",
  ]
end
