class Vision < Formula
  desc "Allows you to add Google Visions image labeling, face, logo, and landmark detection, OCR, and detection of explicit content, into applications."
  homepage "https://github.com/faithoflifedev/google_vision"
  url "https://api.github.com/repos/faithoflifedev/google_vision/tarball/v1.0.5+6"
  sha256 "0a5619f0092869430ab5b900a12802838b6618ddf8d98926a133242d26b2e2e2"
  license "MIT"
  
  depends_on "dart-lang/dart/dart" => :build
  
  def install
    system "dart", "pub", "get"
    system "dart", "compile", "exe", "bin/vision.dart", "-o", "vision"
    bin.install "vision"
  end
  
  test do
    assert_match "obs_websocket v1.0.5+6", shell_output("bin/vision version")
  end
end