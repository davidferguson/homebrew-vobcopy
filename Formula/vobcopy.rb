class Vobcopy < Formula
  desc "Copy DVD .vob files to hard disk"
  homepage "http://vobcopy.org"
  url "http://web.archive.org/web/20160309064600/http://vobcopy.org/download/vobcopy-1.2.0.tar.bz2"
  sha256 "892504d195d06a80ab283db642eb2ccbf9f1dc6ba5ff0fdfcf7a9cb660f48106"

  depends_on "libdvdread"
  depends_on "libdvdcss"

  def install
    system "./configure.sh", "--prefix=#{prefix}",
                             "--mandir=#{man}",
                             "--with-lfs",
                             "--with-dvdread-libs=#{HOMEBREW_PREFIX}"
    system "make"
    system "make", "install"
  end
end
