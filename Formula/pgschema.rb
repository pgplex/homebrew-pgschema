class Pgschema < Formula
  desc "Terraform-style, declarative schema migration for Postgres"
  homepage "https://www.pgschema.com"
  url "https://github.com/pgplex/pgschema/releases/download/v1.13.4/pgschema-1.13.4-darwin-arm64"
  version "1.13.4"
  sha256 "8fc5a7953b0f4ebc1e95eccdc1659358e5aeda677fb794c8f6e16b4b53f03181"
  license "Apache-2.0"

  def install
    bin.install "pgschema-#{version}-darwin-arm64" => "pgschema"
  end

  test do
    system "#{bin}/pgschema", "version"
  end
end
