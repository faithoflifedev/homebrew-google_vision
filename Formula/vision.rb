class Vision < Formula
  desc "Allows you to add Google Visions image labeling, face, logo, and landmark detection, OCR, and detection of explicit content, into applications."
  homepage "https://github.com/faithoflifedev/google_vision"
  url "https://api.github.com/repos/faithoflifedev/google_vision/tarball/v1.0.6+3"
  sha256 "2225912979945aaa75c3d8e5e17c7d9be5ab2a585379554b0da38fbd2a2cf9e3"
  license "MIT"
  
  depends_on "dart-lang/dart/dart" => :build
  
  def install
    system "dart", "pub", "get"
    system "dart", "compile", "exe", "bin/vision.dart", "-o", "vision"
    bin.install "vision"
  end
  
  test do
    assert_match "obs_websocket v1.0.6+3", shell_output("bin/vision version")
  end
end