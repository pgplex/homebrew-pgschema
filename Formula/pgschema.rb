class Pgschema < Formula
  desc "Terraform-style, declarative schema migration for Postgres"
  homepage "https://www.pgschema.com"
  url "https://github.com/pgplex/pgschema/releases/download/v1.13.3/pgschema-1.13.3-darwin-arm64"
  version "1.13.3"
  sha256 "e092e17ac93bf39adabde0a34b3517cb1803dc2b162752cb5af844e3cf42c6cb"
  license "Apache-2.0"

  def install
    bin.install "pgschema-#{version}-darwin-arm64" => "pgschema"
  end

  test do
    system "#{bin}/pgschema", "version"
  end
end
