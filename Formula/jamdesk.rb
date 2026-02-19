class Jamdesk < Formula
  desc "Documentation platform CLI"
  homepage "https://www.jamdesk.com"
  url "https://registry.npmjs.org/jamdesk/-/jamdesk-1.0.10.tgz"
  sha256 "1b320d191d99a87f0bdc9f5f85a3e33d5a16e6e2f7f4c489a8bfd8e9167292af"
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
