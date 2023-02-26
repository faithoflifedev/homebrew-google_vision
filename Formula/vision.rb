class Vision < Formula
  desc "Allows you to add Google Visions image labeling, face, logo, and landmark detection, OCR, and detection of explicit content, into applications."
  homepage "https://github.com/faithoflifedev/google_vision"
  url "https://api.github.com/repos/faithoflifedev/google_vision/tarball/v1.0.7+2"
  sha256 "898bb9254706c05cc62756f35807cacd9f26fede61809dab2fea3060e674b332"
  license "MIT"
  
  depends_on "dart-lang/dart/dart" => :build
  
  def install
    system "dart", "pub", "get"
    system "dart", "compile", "exe", "bin/vision.dart", "-o", "vision"
    bin.install "vision"
  end
  
  test do
    assert_match "obs_websocket v1.0.7+2", shell_output("bin/vision version")
  end
end