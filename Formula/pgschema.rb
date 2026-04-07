class Pgschema < Formula
  desc "Terraform-style, declarative schema migration for Postgres"
  homepage "https://www.pgschema.com"
  url "https://github.com/pgplex/pgschema/releases/download/v1.9.0/pgschema-1.9.0-darwin-arm64"
  version "1.9.0"
  sha256 "ff20c352aedd7df08778dda859b9e79c34a9b90ad5e65014ff3dedab6e4ef5b1"
  license "Apache-2.0"

  def install
    bin.install "pgschema-#{version}-darwin-arm64" => "pgschema"
  end

  test do
    system "#{bin}/pgschema", "version"
  end
end
