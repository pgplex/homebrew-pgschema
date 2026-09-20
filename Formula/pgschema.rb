class Pgschema < Formula
  desc "Terraform-style, declarative schema migration for Postgres"
  homepage "https://www.pgschema.com"
  url "https://github.com/pgplex/pgschema/releases/download/v1.13.1/pgschema-1.13.1-darwin-arm64"
  version "1.13.1"
  sha256 "15af7abf0b7e545a98452f2eed62650a7dc8aa6abcc7f54dd4f0f6e234238a43"
  license "Apache-2.0"

  def install
    bin.install "pgschema-#{version}-darwin-arm64" => "pgschema"
  end

  test do
    system "#{bin}/pgschema", "version"
  end
end
