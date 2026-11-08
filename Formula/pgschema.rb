class Pgschema < Formula
  desc "Terraform-style, declarative schema migration for Postgres"
  homepage "https://www.pgschema.com"
  url "https://github.com/pgplex/pgschema/releases/download/v1.14.1/pgschema-1.14.1-darwin-arm64"
  version "1.14.1"
  sha256 "cf06ef72af0a318882b7418acc2f8862bddbb22bb0bf90a3aff2eb3f106b3e54"
  license "Apache-2.0"

  def install
    bin.install "pgschema-#{version}-darwin-arm64" => "pgschema"
  end

  test do
    system "#{bin}/pgschema", "version"
  end
end
