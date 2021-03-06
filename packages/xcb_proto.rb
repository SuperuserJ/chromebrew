require 'package'

class Xcb_proto < Package
  description 'The protocols for the X window system provide extended functionality for communication between a X client and the server.'
  homepage 'https://x.org'
  version '1.12-0'
  source_url 'https://www.x.org/archive/individual/xcb/xcb-proto-1.12.tar.gz'
  source_sha256 'cfa49e65dd390233d560ce4476575e4b76e505a0e0bacdfb5ba6f8d0af53fd59'

  binary_url ({

  })
  binary_sha256 ({

  })
  
  depends_on 'python27' => :build 
  
  def self.build
    system "./configure --prefix=#{CREW_PREFIX} --libdir=#{CREW_LIB_PREFIX}"
    system "make"
  end

  def self.install
    system "make", "DESTDIR=#{CREW_DEST_DIR}", "install"
  end
end
