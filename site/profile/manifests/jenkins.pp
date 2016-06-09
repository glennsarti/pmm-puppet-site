class profile::jenkins {
  
  class { 'jenkins':
    configure_firewall => true,
  }

  #jenkins::job { "control-repo":
  #  ensure  => present,
  #  enabled => true,
  #}

  jenkins::plugin { 'workflow-puppet-enterprise':
    source => 'http://int-resources.ops.puppetlabs.net/carl/workflow-puppet-enterprise.hpi',
  }
}
