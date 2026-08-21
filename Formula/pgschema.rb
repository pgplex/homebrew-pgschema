class Pgschema < Formula
  desc "Terraform-style, declarative schema migration for Postgres"
  homepage "https://www.pgschema.com"
  url "https://github.com/pgplex/pgschema/releases/download/v1.12.4/pgschema-1.12.4-darwin-arm64"
  version "1.12.4"
  sha256 "644e7dfc1276c23070caa32a979567b06dbe3d2c437874948bdf5a201d8f67ca"
  license "Apache-2.0"

  def install
    bin.install "pgschema-#{version}-darwin-arm64" => "pgschema"
  end

  test do
    system "#{bin}/pgschema", "version"
  end
end
