class Pgschema < Formula
  desc "Terraform-style, declarative schema migration for Postgres"
  homepage "https://www.pgschema.com"
  url "https://github.com/pgplex/pgschema/releases/download/v1.14.0/pgschema-1.14.0-darwin-arm64"
  version "1.14.0"
  sha256 "04934af7407282d94618da17430cf1a1bcfe897948a568eebec1587d86374fc4"
  license "Apache-2.0"

  def install
    bin.install "pgschema-#{version}-darwin-arm64" => "pgschema"
  end

  test do
    system "#{bin}/pgschema", "version"
  end
end
