class Pgschema < Formula
  desc "Terraform-style, declarative schema migration for Postgres"
  homepage "https://www.pgschema.com"
  url "https://github.com/pgplex/pgschema/releases/download/v1.9.0/pgschema-1.9.0-darwin-arm64"
  version "1.9.0"
  sha256 "8c8801ed15a8a74550d44626b93eec0bcfb72d4e98e8608f5749a0c3597d75a3"
  license "Apache-2.0"

  def install
    bin.install "pgschema-#{version}-darwin-arm64" => "pgschema"
  end

  test do
    system "#{bin}/pgschema", "version"
  end
end
