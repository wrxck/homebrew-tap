class Agenttop < Formula
  desc "Real-time terminal dashboard for monitoring AI coding agent sessions"
  homepage "https://github.com/wrxck/agenttop"
  url "https://registry.npmjs.org/agenttop/-/agenttop-0.11.0.tgz"
  sha256 "8404d05805d95f5d23ede9f82cca3fc5a3d2fce62977dfc1bede20991ece1c34"
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
