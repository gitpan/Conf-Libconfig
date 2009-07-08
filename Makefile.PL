use ExtUtils::MakeMaker;
$Verbose = 1;

$CC = 'g++';

# See lib/ExtUtils/MakeMaker.pm for details of how to influence
# the contents of the Makefile that is written.
WriteMakefile(
    'NAME'	=> 'Conf::Libconfig',
    'VERSION_FROM' => 'Libconfig.pm', # finds $VERSION
    'LIBS'	=> ['-lconfig++'],   # e.g., '-lm' 
    'DEFINE'	=> '',     # e.g., '-DHAVE_SOMETHING' 
    'INC'	=> '-I/usr/include',     # e.g., '-I/usr/include/other' 
    'CC'	=> $CC,
    'LD'	=> '$(CC)',
#	'LD_RUN_PATH'	=> '/usr/lib64',
#    'LINKTYPE'	=> 'static',
    'XSPROTOARG'	=> '-noprototypes',
	'XSOPT'            => '-C++',
    'TYPEMAPS'	=> ['perlobject.map' ],
    'realclean'	=> {'FILES' => 'perl'},
);
