class openvas::params {

  $package_name=[ 'openvas', 'gnutls-utils' ]
  $latex_packages = [ 'texlive-texconfig', 'texlive-metafont-bin', 'TeXmacs', 'texlive-cm', 'texlive-comment', 'texlive-titlesec', 'texlive-changepage' ]
  $scanner_service_name='openvas-scanner'
  $manager_service_name='openvas-manager'
  $gsad_service_name='gsad'

  case $::osfamily
  {
    'redhat':
    {
      case $::operatingsystemrelease
      {
        /^[78].*$/:
        {
        }
        default: { fail("Unsupported RHEL/CentOS version! - ${::operatingsystemrelease}")  }
      }
    }
    # 'Debian':
    # {
    #   case $::operatingsystem
    #   {
    #     'Ubuntu':
    #     {
    #       case $::operatingsystemrelease
    #       {
    #         /^14.*$/:
    #         {
    #         }
    #         /^16.*$/:
    #         {
    #         }
    #         default: { fail("Unsupported Ubuntu version! - ${::operatingsystemrelease}")  }
    #       }
    #     }
    #     'Debian': { fail('Unsupported')  }
    #     default: { fail('Unsupported Debian flavour!')  }
    #   }
    # }
    default: { fail('Unsupported OS!')  }
  }
}
