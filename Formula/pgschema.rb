class Pgschema < Formula
  desc "Terraform-style, declarative schema migration for Postgres"
  homepage "https://www.pgschema.com"
  url "https://github.com/pgplex/pgschema/releases/download/v1.12.0/pgschema-1.12.0-darwin-arm64"
  version "1.12.0"
  sha256 "f01ea488f21700752d5747bc013c406daa583a68b631739f33af430d5d3ec449"
  license "Apache-2.0"

  def install
    bin.install "pgschema-#{version}-darwin-arm64" => "pgschema"
  end

  test do
    system "#{bin}/pgschema", "version"
  end
end
