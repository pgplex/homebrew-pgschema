class Pgschema < Formula
  desc "Terraform-style, declarative schema migration for Postgres"
  homepage "https://www.pgschema.com"
  url "https://github.com/pgplex/pgschema/releases/download/v1.10.0/pgschema-1.10.0-darwin-arm64"
  version "1.10.0"
  sha256 "35de42473e143736177d8df9ff831e6d44b5e6f46c34a3ba7ca3fb6975c1a028"
  license "Apache-2.0"

  def install
    bin.install "pgschema-#{version}-darwin-arm64" => "pgschema"
  end

  test do
    system "#{bin}/pgschema", "version"
  end
end
