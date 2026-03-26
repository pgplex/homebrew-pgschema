class Pgschema < Formula
  desc "Terraform-style, declarative schema migration for Postgres"
  homepage "https://www.pgschema.com"
  url "https://github.com/pgplex/pgschema/releases/download/v1.8.0/pgschema-1.8.0-darwin-arm64"
  version "1.8.0"
  sha256 "bc4be1330e99a9eca7e9b6388664166e98f1748bad8216b417425f2aa9dc8d31"
  license "Apache-2.0"

  def install
    bin.install "pgschema-#{version}-darwin-arm64" => "pgschema"
  end

  test do
    system "#{bin}/pgschema", "version"
  end
end
