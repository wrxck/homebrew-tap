class SmtpDevServer < Formula
  desc "Fake SMTP server for development and testing"
  homepage "https://github.com/wrxck/smtp-dev-server"
  version "1.1.0"
  license "BSD-3-Clause"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/wrxck/smtp-dev-server/releases/download/v1.1.0/smtp-dev-server-v1.1.0-darwin-arm64.tar.gz"
      sha256 "6ca014612743961646229c94d56b5b6762d3147e77910dbdc9a5f9e916d2c230"

      def install
        bin.install "smtp-dev-server-darwin-arm64" => "smtp-dev-server"
      end
    end

    if Hardware::CPU.intel?
      url "https://github.com/wrxck/smtp-dev-server/releases/download/v1.1.0/smtp-dev-server-v1.1.0-darwin-amd64.tar.gz"
      sha256 "d5ca82efcc1bc042453daea01ec35153de01e1d5e2976ed3d803319e204f5930"

      def install
        bin.install "smtp-dev-server-darwin-amd64" => "smtp-dev-server"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/wrxck/smtp-dev-server/releases/download/v1.1.0/smtp-dev-server-v1.1.0-linux-arm64.tar.gz"
      sha256 "134ec22d5788fa6182bcab779e539e2a73ee0c77b274a7cce7f7b37729ec288e"

      def install
        bin.install "smtp-dev-server-linux-arm64" => "smtp-dev-server"
      end
    end

    if Hardware::CPU.intel?
      url "https://github.com/wrxck/smtp-dev-server/releases/download/v1.1.0/smtp-dev-server-v1.1.0-linux-amd64.tar.gz"
      sha256 "007ae56809ffa2945c9672313449f860d21e9fe97c710ce2aa2f949d2fc55d51"

      def install
        bin.install "smtp-dev-server-linux-amd64" => "smtp-dev-server"
      end
    end
  end

  test do
    assert_match "smtp-dev-server", shell_output("#{bin}/smtp-dev-server -version")
  end
end
