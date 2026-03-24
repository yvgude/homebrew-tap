class LeanCtx < Formula
  desc "Hybrid Context Optimizer with TDD — 50+ compression patterns, Shell Hook + MCP Server"
  homepage "https://leanctx.com"
  url "https://github.com/yvgude/lean-ctx/archive/refs/tags/v1.4.0.tar.gz"
  sha256 "PLACEHOLDER"
  license "MIT"
  head "https://github.com/yvgude/lean-ctx.git", branch: "main"

  depends_on "rust" => :build

  def install
    cd "rust" do
      system "cargo", "install", *std_cargo_args
    end
  end

  test do
    assert_match "lean-ctx 1.4.0", shell_output("#{bin}/lean-ctx --version")
  end
end
