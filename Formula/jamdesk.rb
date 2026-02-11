class Jamdesk < Formula
  desc "Documentation platform CLI"
  homepage "https://www.jamdesk.com"
  url "https://registry.npmjs.org/jamdesk/-/jamdesk-1.0.5.tgz"
  sha256 "29529bf5d8d001b946f35e2888cb60a040fbde294832dd3ed908c221bd45e820"
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
