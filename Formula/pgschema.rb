class Pgschema < Formula
  desc "Terraform-style, declarative schema migration for Postgres"
  homepage "https://www.pgschema.com"
  url "https://github.com/pgplex/pgschema/releases/download/v1.11.1/pgschema-1.11.1-darwin-arm64"
  version "1.11.1"
  sha256 "cb13022007203356f2deaf207071bfa618f330c2b406ec1302363849b5014c58"
  license "Apache-2.0"

  def install
    bin.install "pgschema-#{version}-darwin-arm64" => "pgschema"
  end

  test do
    system "#{bin}/pgschema", "version"
  end
end
