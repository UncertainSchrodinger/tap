class Rojekti < Formula
  desc "Create, save and start complex tmux layouts."
  homepage "https://github.com/UncertainSchrodinger/molokki"
  head "https://github.com/UncertainSchrodinger/molokki.git", branch: "main"

 depends_on "rust" => [:build, :test]

  def install
    cd "rojekti" do
      system "cargo", "build", "--release"
      bin.install "target/release/rojekti"
    end
  end
end
