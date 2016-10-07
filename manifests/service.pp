# == Class proftpd::service
#
class proftpd::service {
  if ( $::proftpd::service_manage == true ) {
    service { $::proftpd::service_name:
      hasrestart => true,
      ensure  => $::proftpd::service_ensure,
      enable  => $::proftpd::service_enable,
      require => Class['::proftpd::config'],
    }
  }
}
