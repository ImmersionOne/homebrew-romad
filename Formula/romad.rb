class Romad < Formula
  include Language::Python::Virtualenv

  desc "Travel networking toolkit for digital nomads"
  homepage "https://github.com/ImmersionOne/romad"
  url "https://github.com/ImmersionOne/romad/archive/refs/tags/v0.4.0.tar.gz"
  sha256 "465cf34a935b7f2e58b3c1c2675b86543c663a37dee96f22e145cb962bb0b343"
  license "MIT"

  depends_on "python@3.12"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "romad", shell_output("#{bin}/romad --version")
  end
end
