class JanctionRender < Formula
  desc "Render Blender scenes and 3D models on cloud GPUs from AI agents (MCP launcher)"
  homepage "https://render.janction.jp"
  url "https://registry.npmjs.org/janction-render/-/janction-render-1.0.3.tgz"
  sha256 "19a30a2eb96564560b0fdc93cade239aef7068799b24d6203342066606f62299"
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
