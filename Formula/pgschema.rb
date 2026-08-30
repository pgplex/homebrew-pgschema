class Pgschema < Formula
  desc "Terraform-style, declarative schema migration for Postgres"
  homepage "https://www.pgschema.com"
  url "https://github.com/pgplex/pgschema/releases/download/v1.12.5/pgschema-1.12.5-darwin-arm64"
  version "1.12.5"
  sha256 "45f72aad6d54d4c21815e19844c566690cf1150cb61358fd9a1839c0060bf9ea"
  license "Apache-2.0"

  def install
    bin.install "pgschema-#{version}-darwin-arm64" => "pgschema"
  end

  test do
    system "#{bin}/pgschema", "version"
  end
end
