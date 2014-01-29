:silent! %s/\['modulename'\]/\=b:module_name/g
:silent! %s/\['classpath'\]/\=b:classpath/g
:if search('<+CURSOR+>')
: normal! "_da>
:endif
# Class: classpath
#
#   Descripcion de lo que hace esta clase.
#
# Parameters (ejemplo):
#
#   [*usuario*]: usuario del sistema.
#   [*directorio*]: directorio donde se aplica.
#   [*puerto*]: puerto que usa.
#
# Actions:
#
#   - Hago esto.
#   - Luego hago lo otro.
#   - Finalizo haciendo esto.
#
# Requires:
#
#   - Package["foopackage"]
#
# Usage (ejemplo):
#
#    class { 'tftp':
#      directory => '/opt/tftp',
#      address   => $::ipadress,
#      options   => '--ipv6 --timeout 60',
#    }
#
class ['modulename'] {
  <+CURSOR+>
}
