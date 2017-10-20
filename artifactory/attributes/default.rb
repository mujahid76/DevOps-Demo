#node.default['artifactory']['java']['jdk_version'] = 1.8.0_92
# determines which url/checksum attributes to use to download oracle jdk
#default['artifactory']['oracle_jdk']['version'] = '8'
# download urls and sha256 checksums for current oracle jdk tarballs
#default['artifactory']['oracle_jdk']['url'] = 'http://download.oracle.com/otn-pub/java/jdk/8u144-b01/090f390dda5b47b9b721c7dfaa008135/jdk-8u144-linux-x64.tar.gz'
#default['artifactory']['oracle_jdk']['checksum'] = 'e8a341ce566f32c3d06f6d0f0eeea9a0f434f538d22af949ae58bc86f2eeaae4'

# root install path of jdk
#default['artifactory']['oracle_jdk']['path'] = '/usr/lib/jvm'
# whether to install alternatives for jdk binaries
#default['artifactory']['oracle_jdk']['set_alternatives'] = true
# if true, ensures alternatives set to this jdk
#default['artifactory']['oracle_jdk']['set_default'] = true
# owner of jdk directories/files
#default['artifactory']['oracle_jdk']['owner'] = 'root'
# group owning jdk directories/files, defaults to primary group of 'owner' unless set
#default['artifactory']['oracle_jdk']['group'] = 'root'
#default['artifactory']['oracle_jdk']['mode'] = 'auto'
# set to true if downloading direct from oracle
#default['artifactory']['oracle_jdk']['accept_oracle_download_terms'] = true
# whether to set JAVA_HOME in /etc/profile.d
#default['artifactory']['oracle_jdk']['set_java_home'] = true