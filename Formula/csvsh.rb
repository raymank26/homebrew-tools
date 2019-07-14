class Csvsh < Formula
  desc "Terminal tool for querying CSV files using SQL-like language"
  homepage "https://github.com/raymank26/csvsh"
  url "https://github.com/raymank26/csvsh/releases/download/0.0.1/csvsh-0.0.1.tar"
  sha256 "a1ab18d6cb2478744d46b4e75e4f7d142b5d1f4d267645801be74eeea5392cdc"

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
