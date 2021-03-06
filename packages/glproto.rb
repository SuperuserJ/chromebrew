require 'package'

class Glproto < Package
  description 'The protocols for the X window system provide extended functionality for communication between a X client and the server.'
  homepage 'https://x.org'
  version '1.4.17-0'
  source_url 'https://www.x.org/archive/individual/proto/glproto-1.4.17.tar.gz'
  source_sha256 '9d8130fec2b98bd032db7730fa092dd9dec39f3de34f4bb03ceb43b9903dbc96'

  binary_url ({

  })
  binary_sha256 ({

  })

  def self.build
    system "./configure --prefix=#{CREW_PREFIX} --libdir=#{CREW_LIB_PREFIX}"
  end

  def self.install
    system "make", "DESTDIR=#{CREW_DEST_DIR}", "install"
  end
end
