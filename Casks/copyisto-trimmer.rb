cask "copyisto-trimmer" do
  version "0.2.0"
  sha256 "dc77ba02fb482e8ca10578ee79005d26aa794d5dfac62f61b0102eb993b3eda0"

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
