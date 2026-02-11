class Jamdesk < Formula
  desc "Documentation platform CLI"
  homepage "https://jamdesk.com"
  url "https://registry.npmjs.org/jamdesk/-/jamdesk-1.0.0.tgz"
  sha256 "df59e2a02923d2a0128f215a222b38a61aa2486b59bd5289664a945f4747d8c1"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["\#{libexec}/bin/*"]
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/jamdesk --version")
  end
end
