# == Class: iis_rewrite::params
#
# Defaut parameter values for the IIS Rewrite 2.0 module

class iis_rewrite::params {
$package_source_location = $::architecture ? {
'x86'   => 'http://download.microsoft.com/download/6/9/C/69C1195A-123E-4BE8-8EDF-371CDCA4EC6C/rewrite_2.0_rtw_x86.msi',
'x64'   => 'http://download.microsoft.com/download/6/7/D/67D80164-7DD0-48AF-86E3-DE7A182D6815/rewrite_2.0_rtw_x64.msi',
default => ''
}
$download_destination    = 'c:\temp'
}
