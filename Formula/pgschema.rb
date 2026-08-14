class Pgschema < Formula
  desc "Terraform-style, declarative schema migration for Postgres"
  homepage "https://www.pgschema.com"
  url "https://github.com/pgplex/pgschema/releases/download/v1.12.3/pgschema-1.12.3-darwin-arm64"
  version "1.12.3"
  sha256 "1328eff0ac6695c27f96065001344ead10cdbe01c807a8bbcf7689ed97a3cf6c"
  license "Apache-2.0"

  def install
    bin.install "pgschema-#{version}-darwin-arm64" => "pgschema"
  end

  test do
    system "#{bin}/pgschema", "version"
  end
end
