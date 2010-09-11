export CATALYST_DEBUG=1
export PERL_MM_USE_DEFAULT=1

alias pmver="perl -le '\$m = shift; eval qq(require \$m) or die qq(module \"\$m\" is not installed\\n); print \$m->VERSION'"

catalyst_version=`pmver Catalyst::Devel`

if [[ $catalyst_version -gt 0 ]]; then
    alias cs="perl script/*_server.pl -d"
fi

alias c='cpanm'

source ~/perl5/perlbrew/etc/bashrc