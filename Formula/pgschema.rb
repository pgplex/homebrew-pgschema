class Pgschema < Formula
  desc "Terraform-style, declarative schema migration for Postgres"
  homepage "https://www.pgschema.com"
  url "https://github.com/pgplex/pgschema/releases/download/v1.11.0/pgschema-1.11.0-darwin-arm64"
  version "1.11.0"
  sha256 "719502331a9b8f6695130c9236a3562fd7d5b39e6a316e938b6871903cf4006d"
  license "Apache-2.0"

  def install
    bin.install "pgschema-#{version}-darwin-arm64" => "pgschema"
  end

  test do
    system "#{bin}/pgschema", "version"
  end
end
