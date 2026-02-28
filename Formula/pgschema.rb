class Pgschema < Formula
  desc "Terraform-style, declarative schema migration for Postgres"
  homepage "https://www.pgschema.com"
  url "https://github.com/pgplex/pgschema/releases/download/v1.7.3/pgschema-1.7.3-darwin-arm64"
  version "1.7.3"
  sha256 "e5e35cba84f27a8cb866c93d386167ee3f973b8f6fd5138e194fb4f5e028b462"
  license "Apache-2.0"

  def install
    bin.install "pgschema-#{version}-darwin-arm64" => "pgschema"
  end

  test do
    system "#{bin}/pgschema", "version"
  end
end
