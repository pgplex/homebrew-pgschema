class Pgschema < Formula
  desc "Terraform-style, declarative schema migration for Postgres"
  homepage "https://www.pgschema.com"
  url "https://github.com/pgplex/pgschema/releases/download/v1.12.1/pgschema-1.12.1-darwin-arm64"
  version "1.12.1"
  sha256 "009f028230a3b3c4ce0c64b5ff56af0b755b7159a95c17feeab8d0d3c87691f4"
  license "Apache-2.0"

  def install
    bin.install "pgschema-#{version}-darwin-arm64" => "pgschema"
  end

  test do
    system "#{bin}/pgschema", "version"
  end
end
