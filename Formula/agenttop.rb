class Agenttop < Formula
  desc "Real-time terminal dashboard for monitoring AI coding agent sessions"
  homepage "https://github.com/wrxck/agenttop"
  url "https://registry.npmjs.org/agenttop/-/agenttop-0.11.4.tgz"
  sha256 "493fa35f9546bdb910297760327e27203fed852a5c68a0b50f3deeaca6a5c22c"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agenttop --version")
  end
end
