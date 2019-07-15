class Csvsh < Formula
  desc "Terminal tool for querying CSV files using SQL-like language"
  homepage "https://github.com/raymank26/csvsh"
  url "https://github.com/raymank26/csvsh/releases/download/0.0.1/csvsh-0.0.1.tar"
  sha256 "3fa504780ebc9692b3b108daa0d66bcd51b658c00cd59cebf264c3baa741827e"

  depends_on :java => '1.8+'

  def install
    (prefix/"bin").install "bin/csvsh"
    (prefix/"config").install Dir["config/*"]
    (prefix/"lib").install Dir["lib/*"]
  end

  test do
    assert_equal "0.0.1\n", shell_output("#{bin}/csvsh --version")
  end
end
