require 'package'

class Fixesproto < Package
  description 'The protocols for the X window system provide extended functionality for communication between a X client and the server.'
  homepage 'https://x.org'
  version '5.0-0'
  source_url 'https://www.x.org/archive/individual/proto/fixesproto-5.0.tar.gz'
  source_sha256 '67865a0e3cdc7dec1fd676f0927f7011ad4036c18eb320a2b41dbd56282f33b8'

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
