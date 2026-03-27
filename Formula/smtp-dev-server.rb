class SmtpDevServer < Formula
  desc "Fake SMTP server for macOS development and testing"
  homepage "https://github.com/wrxck/smtp-dev-server"
  version "1.0.0"
  license "BSD-3-Clause"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/wrxck/smtp-dev-server/releases/download/v1.0.0/smtp-dev-server-v1.0.0-darwin-arm64.tar.gz"
      sha256 "09a54c93f0a5842e969bda234569775eaca890bdafefa4e1a8b60aaa6c17a715"

      def install
        bin.install "smtp-dev-server-darwin-arm64" => "smtp-dev-server"
      end
    end

    if Hardware::CPU.intel?
      url "https://github.com/wrxck/smtp-dev-server/releases/download/v1.0.0/smtp-dev-server-v1.0.0-darwin-amd64.tar.gz"
      sha256 "16cdae4964345bf03f854cd3a1410fcc318b3aba4a308b6017ce74c7d107462a"

      def install
        bin.install "smtp-dev-server-darwin-amd64" => "smtp-dev-server"
      end
    end
  end

  test do
    assert_match "smtp-dev-server", shell_output("#{bin}/smtp-dev-server -version")
  end
end
