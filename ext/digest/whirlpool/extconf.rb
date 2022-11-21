require 'mkmf'

$defs << "-DHAVE_CONFIG_H"
$INCFLAGS << " -I$(srcdir)/.. -I$(hdrdir)/ruby -I/usr/include/ruby-3.0.0/ruby/digest.h"

have_header('ruby/digest.h')

$preload = %w[digest]

create_makefile('digest/whirlpool')
