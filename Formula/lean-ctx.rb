class LeanCtx < Formula
  desc "Context Intelligence Engine with CEP + CCP — 21 MCP tools, 90+ shell patterns, cross-session memory"
  homepage "https://leanctx.com"
  url "https://github.com/yvgude/lean-ctx/archive/refs/tags/v2.4.0.tar.gz"
  sha256 "060179009d8a24927a006818f8ec8fc04c303329d990943045bd7b3ae1e47038"
  license "MIT"
  head "https://github.com/yvgude/lean-ctx.git", branch: "main"

  depends_on "rust" => :build

  def install
    cd "rust" do
      system "cargo", "install", *std_cargo_args
    end
  end

  test do
    assert_match "lean-ctx 2.4.0", shell_output("#{bin}/lean-ctx --version")
  end
end
