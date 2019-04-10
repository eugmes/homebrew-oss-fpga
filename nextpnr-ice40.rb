class NextpnrIce40 < Formula
  desc "portable FPGA place-and-route tool"
  homepage "https://github.com/YosysHQ/nextpnr"
  head "https://github.com/YosysHQ/nextpnr.git"

  depends_on "cmake" => :build
  depends_on "pkg-config" => :build
  depends_on "eigen" => :build
  depends_on "python"
  depends_on "boost"
  depends_on "boost-python3"
  depends_on "qt5"
  depends_on "icestorm"

  def install
    system "cmake", "-DARCH=ice40", ".", *std_cmake_args
    system "make", "install"
  end

end