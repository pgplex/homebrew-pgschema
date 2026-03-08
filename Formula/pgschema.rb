class Pgschema < Formula
  desc "Terraform-style, declarative schema migration for Postgres"
  homepage "https://www.pgschema.com"
  url "https://github.com/pgplex/pgschema/releases/download/v1.7.4/pgschema-1.7.4-darwin-arm64"
  version "1.7.4"
  sha256 "2496ee9b5a7aeee9a81bbed04d376f53da7f7d999c47d54b7c64de4b57593dbf"
  license "Apache-2.0"

  def install
    bin.install "pgschema-#{version}-darwin-arm64" => "pgschema"
  end

  test do
    system "#{bin}/pgschema", "version"
  end
end
