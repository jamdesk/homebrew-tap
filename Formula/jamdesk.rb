class Jamdesk < Formula
  desc "Documentation platform CLI"
  homepage "https://www.jamdesk.com"
  url "https://registry.npmjs.org/jamdesk/-/jamdesk-1.1.210.tgz"
  sha256 "50d524a95c8256223f08969fbd57a0b5f4e9dfed10678209330a1e30335bcd0c"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["\#{libexec}/bin/*"]
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/jamdesk --version")
  end
end
