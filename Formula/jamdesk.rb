class Jamdesk < Formula
  desc "Documentation platform CLI"
  homepage "https://www.jamdesk.com"
  url "https://registry.npmjs.org/jamdesk/-/jamdesk-1.1.168.tgz"
  sha256 "de440a76891d6cdbc5191772a473e41ffbe9b55b642e97e6b5aebb771ced6f2f"
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
