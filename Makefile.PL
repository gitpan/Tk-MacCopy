
use Tk::MMutil;

Tk::MMutil::TkExtMakefile(
    NAME          => "Tk::MacCopy",
    DISTNAME      => "Tk-MacCopy",
    VERSION_FROM  => "MacCopy.pm",
    PM            => {"MacCopy.pm" => "\$(INST_LIBDIR)/MacCopy.pm", "NCopy.pm" => "\$(INST_LIBDIR)/../File/NCopy.pm"},
    dist          => {COMPRESS => 'gzip', SUFFIX => 'gz'},
    ABSTRACT      => 'MacCopy widget',
    AUTHOR        => 'Steve Lidie (sol0@lehigh.edu)',
);
