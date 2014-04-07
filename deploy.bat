@echo "gtk2-perl-compiler 0.1.0 by vinocui@gmail.com"
@echo "I assume your strawberry is install ed in d:\strawberry"
@echo "If not, please manually modify it in this batch file."
@pause

set PKG_CONFIG_PATH=d:\strawberry\c\lib\pkgconfig
set PATH=d:\strawberry\c\bin;d:\strawberry\perl\bin;

@perl download.pl
@perl extract.pl
@perl rename.pl
@perl modpc.pl


@echo Manually copy ex/*.* to your Strawberry/c directory.
@echo Then run: 
@echo          perl -MCPAN -e "force install Glib"
@echo          perl -MCPAN -e "install Gtk2"
@echo If anything goes wrong, just go to your Strawberry/cpan directory, compile that module manually.
@echo Sometimes the CPAN module seems not pretty smart enough.
@echo Run "perl helloworld.pl", if a small window pops up without error, the Gtk2-perl has been successfully installed!
@echo Any problem, mail to Jia.Tsui@gmail.com
@pause