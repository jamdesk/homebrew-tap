class Jamdesk < Formula
  desc "Documentation platform CLI"
  homepage "https://www.jamdesk.com"
  url "https://registry.npmjs.org/jamdesk/-/jamdesk-1.0.2.tgz"
  sha256 "fb9c8b4004ac351f9a30316812015f7162c7991ca40795d64caf2400b55a056c"
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
