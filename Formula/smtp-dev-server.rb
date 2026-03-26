class SmtpDevServer < Formula
  desc "Fake SMTP server for macOS development and testing"
  homepage "https://github.com/wrxck/smtp-dev-server"
  version "1.0.0"
  license "BSD-3-Clause"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/wrxck/smtp-dev-server/releases/download/v1.0.0/smtp-dev-server-v1.0.0-darwin-arm64.tar.gz"
      sha256 "ceb282ca4650dc50182dad291dca7f1fc622735dd5b7d14e3676047ad29d4a0c"

      def install
        bin.install "smtp-dev-server-darwin-arm64" => "smtp-dev-server"
      end
    end

    if Hardware::CPU.intel?
      url "https://github.com/wrxck/smtp-dev-server/releases/download/v1.0.0/smtp-dev-server-v1.0.0-darwin-amd64.tar.gz"
      sha256 "a7c1acd3f0d6e27dbcf88b075cd905baed834a50a8489326d6137c9aa45f2884"

      def install
        bin.install "smtp-dev-server-darwin-amd64" => "smtp-dev-server"
      end
    end
  end

  test do
    assert_match "smtp-dev-server", shell_output("#{bin}/smtp-dev-server -version")
  end
end
