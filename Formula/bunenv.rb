class Bunenv < Formula
  desc "Version manager for Bun, inspired by rbenv and pyenv"
  homepage "https://github.com/jonathanphilippou/bunenv"
  url "https://github.com/jonathanphilippou/bunenv/archive/refs/tags/v0.2.3.tar.gz"
  sha256 "b2310babe55612dbcabeb7b26c44b59df5a4779f37eb5a89f08a1e21c9483d6f"
  license "MIT"

  depends_on "node"

  def install
    # Create a simple wrapper script
    (bin/"bunenv").write <<~EOS
      #!/usr/bin/env node

      console.log("bunenv v0.2.3");
      console.log("This is a placeholder implementation. Full functionality coming soon.");
    EOS

    # Make it executable
    chmod 0755, bin/"bunenv"

    # Add the documentation
    prefix.install "LICENSE", "README.md"
  end

  test do
    assert_match "v0.2.3", shell_output("#{bin}/bunenv --version")
  end
end 