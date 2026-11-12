class JanctionRender < Formula
  desc "Render Blender scenes and 3D models on cloud GPUs from AI agents (MCP launcher)"
  homepage "https://render.janction.jp"
  url "https://registry.npmjs.org/janction-render/-/janction-render-1.1.1.tgz"
  sha256 "47493d5f7063752295b83b115ec38350ba3e23e5d5bf9ce223c8e08b9de0fc20"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink libexec.glob("bin/*")
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/janction-render --version")
  end
end
