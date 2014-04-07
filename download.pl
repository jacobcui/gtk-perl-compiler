#! d:/strawberry/perl/bin/perl.exe
use HTTP::Request;
use LWP::UserAgent;
require "lwp-download";

$wget = "utility/bin/wget.exe";
$base_url = "http://ftp.gnome.org/pub/gnome/binaries/win32";
$atk_url = "atk/1.30";
$dep_url = "dependencies";
$pango_url = "pango/1.28";
$glib_url = "glib/2.24";
$gtk_url = "gtk+/2.20";
@pkgs_url = ("$atk_url/atk_1.30.0-2_win32.zip",
	     "$atk_url/atk-dev_1.30.0-2_win32.zip",
	     "$dep_url/gettext-runtime_0.18.1.1-2_win32.zip",
	     "$dep_url/gettext-runtime-dev_0.18.1.1-2_win32.zip",
	     "$dep_url/cairo-dev_1.10.0-1_win32.zip",
	     "$dep_url/cairo_1.10.0-1_win32.zip",
	     "$dep_url/expat-dev_2.0.1-1_win32.zip",
	     "$dep_url/expat_2.0.1-1_win32.zip",
	     "$dep_url/fontconfig-dev_2.8.0-2_win32.zip",
	     "$dep_url/fontconfig_2.8.0-2_win32.zip",
	     "$dep_url/freetype-dev_2.4.2-1_win32.zip",
	     "$dep_url/freetype_2.4.2-1_win32.zip",
	     "$dep_url/pkg-config_0.23-3_win32.zip",
	     "$dep_url/libpng-dev_1.4.3-1_win32.zip",
	     "$dep_url/libpng_1.4.3-1_win32.zip",
	     "$glib_url/glib-dev_2.24.2-2_win32.zip",
	     "$glib_url/glib_2.24.2-2_win32.zip",
	     "$gtk_url/gtk+-dev_2.20.1-3_win32.zip",
	     "$gtk_url/gtk+_2.20.1-3_win32.zip",
	     "$pango_url/pango-dev_1.28.1-2_win32.zip",
	     "$pango_url/pango_1.28.1-2_win32.zip",
    );

$pkg_dir = "packages";
mkdir $pkg_dir if( ! -d $pkg_dir );
foreach (@pkgs_url){
    $pkg_name = $_;	
    $pkg_name =~ s/(.*)(\/)(.*)$/$3/;

    print "Getting ", $pkg_name, "...\n";
#    $request = HTTP::Request->new(GET => $base_url . "/" . $_);
    &lwp_download($base_url . "/" . $_, $pkg_dir);
}

