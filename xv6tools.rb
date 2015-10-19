class Xv6tools < Formula
  desc "Installation script for Xv6 building tools"
  homepage "https://github.com/titech-os/xv6tools"
  head "https://github.com/titech-os/xv6tools.git"

  depends_on "libmpc"
  depends_on "glib"
  depends_on "pixman"
  depends_on "pkgconfig"

  def install
      system "PREFIX=#{prefix} sh install.sh"
      system "sh clean.sh --clean"
  end
end
