alias pmver="perl -le '\$m = shift; eval qq(require \$m) or die qq(module \"\$m\" is not installed\\n); print \$m->VERSION'"

if [ -d ~/perl5/perlbrew ]; then
   source ~/perl5/perlbrew/etc/bashrc
fi

export PERL_MM_USE_DEFAULT=1

catalyst_version=`pmver Catalyst::Devel 2>/dev/null`
if [[ $catalyst_version -gt 0 ]]; then
   export CATALYST_DEBUG=1
   alias cs="perl script/*_server.pl -d"
fi

cpanm_version=`pmver App::cpanminus 2>/dev/null`
if [[ $cpanm_version -gt 0 ]]; then
   alias c='cpanm'
else
   alias c='cpan'
fi


