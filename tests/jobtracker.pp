# 

class { '::cdh4::hadoop':
  use_yarn             => false,
  namenode_hostname    => 'localhost',
  dfs_name_dir         => '/var/lib/hadoop/name',
}

# jobtracker requires namenode
include cdh4::hadoop::namenode
include cdh4::hadoop::jobtracker
