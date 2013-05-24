#

class { '::cdh4::hadoop':
  namenode_hostname    => 'localhost',
  dfs_name_dir         => '/var/lib/hadoop/name',
}

# historyserver requires namenode
include cdh4::hadoop::namenode
include cdh4::hadoop::historyserver
