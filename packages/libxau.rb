require 'package'

class Libxau < Package
  description 'xau library for libX11'
  homepage 'https://x.org'
  version '1.0.8-0'
  source_url 'https://www.x.org/archive/individual/lib/libXau-1.0.8.tar.gz'
  source_sha256 'c343b4ef66d66a6b3e0e27aa46b37ad5cab0f11a5c565eafb4a1c7590bc71d7b'

  binary_url ({

  })
  binary_sha256 ({

  })
  
  depends_on 'xproto'
  
  def self.build
    system "./configure --prefix=#{CREW_PREFIX} --libdir=#{CREW_LIB_PREFIX}"
    system "make"
  end

  def self.install
    system "make", "DESTDIR=#{CREW_DEST_DIR}", "install"
  end
end
