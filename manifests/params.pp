# Author::    Paul Stack  (mailto:pstack@opentable.com)
# Copyright:: Copyright (c) 2013 OpenTable Inc
# License::   MIT

# == Class: iis_rewrite::params
#
# This private class is meant to be called from `iis_rewrite`.
# It downloads the package and installs it.
#
class iis_rewrite::params {

  $package_source_location = $::architecture ? {
    'x86'   => 'http://s3-eu-west-1.amazonaws.com/redgate-puppet/url-rewriter/rewrite_x86.msi',
    'x64'   => 'http://s3-eu-west-1.amazonaws.com/redgate-puppet/url-rewriter/rewrite_x64.msi',
    default => ''
  }

  $download_destination    = 'c:\temp'
}
