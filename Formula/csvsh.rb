class Csvsh < Formula
  desc "Terminal tool for querying CSV files using SQL-like language"
  homepage "https://github.com/raymank26/csvsh"
  url "https://github.com/raymank26/csvsh/releases/download/0.0.2/csvsh-0.0.2.tar"
  sha256 "288b9922f169b6101a3a8cd4c4a520397654463877dc10cc380adb3f936f8bea"

  depends_on :java => '1.8+'

  def install
    (prefix/"bin").install "bin/csvsh"
    (prefix/"config").install Dir["config/*"]
    (prefix/"lib").install Dir["lib/*"]
  end

  test do
    assert_equal "0.0.2\n", shell_output("#{bin}/csvsh --version")
  end
end
