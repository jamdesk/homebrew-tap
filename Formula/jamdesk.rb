class Jamdesk < Formula
  desc "Documentation platform CLI"
  homepage "https://jamdesk.com"
  url "https://registry.npmjs.org/jamdesk/-/jamdesk-VERSION.tgz"
  sha256 "SHA256_HASH"
  license "MIT"

  depends_on "node@20"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match "jamdesk", shell_output("#{bin}/jamdesk --version")
  end
end
