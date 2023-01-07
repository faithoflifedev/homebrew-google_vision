class Vision < Formula
  desc "Allows you to add Google Visions image labeling, face, logo, and landmark detection, OCR, and detection of explicit content, into applications."
  homepage "https://github.com/faithoflifedev/google_vision"
  url "https://api.github.com/repos/faithoflifedev/google_vision/tarball/v1.0.5+5"
  sha256 "75adf93ac30272dc855a15f280dad68a44864f79feb43c28e1f974f373436c00"
  license "MIT"
  
  depends_on "dart-lang/dart/dart" => :build
  
  def install
    system "dart", "pub", "get"
    system "dart", "compile", "exe", "bin/vision.dart", "-o", "vision"
    bin.install "vision"
  end
  
  test do
    assert_match "obs_websocket v1.0.5+5", shell_output("bin/vision version")
  end
end