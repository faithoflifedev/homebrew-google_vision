class Vision < Formula
  desc "Allows you to add Google Visions image labeling, face, logo, and landmark detection, OCR, and detection of explicit content, into applications."
  homepage "https://github.com/faithoflifedev/google_vision"
  url "https://api.github.com/repos/faithoflifedev/google_vision/tarball/v1.0.7"
  sha256 "3d7c396e75cc27da3a64fb32b7573dbc2f7f418c5681516779c8202cb25d1f38"
  license "MIT"
  
  depends_on "dart-lang/dart/dart" => :build
  
  def install
    system "dart", "pub", "get"
    system "dart", "compile", "exe", "bin/vision.dart", "-o", "vision"
    bin.install "vision"
  end
  
  test do
    assert_match "obs_websocket v1.0.7", shell_output("bin/vision version")
  end
end