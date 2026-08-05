class Pgschema < Formula
  desc "Terraform-style, declarative schema migration for Postgres"
  homepage "https://www.pgschema.com"
  url "https://github.com/pgplex/pgschema/releases/download/v1.12.2/pgschema-1.12.2-darwin-arm64"
  version "1.12.2"
  sha256 "5671bb75b1d66ca5a65efa04ac7bf4a1047da00c2612ce44e8ed1a640925fb0a"
  license "Apache-2.0"

  def install
    bin.install "pgschema-#{version}-darwin-arm64" => "pgschema"
  end

  test do
    system "#{bin}/pgschema", "version"
  end
end
