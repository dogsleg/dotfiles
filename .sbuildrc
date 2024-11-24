$chroot_mode = 'unshare';
$external_commands = { "build-failed-commands" => [ [ '%SBUILD_SHELL' ] ] };

$build_arch_all = 1;
$source_only_changes = 1;
# $force_orig_source = 1;

$run_lintian = 0;
$lintian_opts=['--info', '--pedantic',
               '--display-info','--verbose', '--show-overrides',
               '--fail-on','error,warning'];

$run_autopkgtest = 1;
$autopkgtest_root_args = [''];
$autopkgtest_opts = ['--apt-upgrade', '--', 'unshare', '--release', '%r', '--arch', '%a' ];

$run_piuparts = 0;
# $piuparts_root_args = ['PATH=/usr/sbin:/usr/bin', 'unshare', '--pid', '--fork', '--mount-proc', '--map-root-user', '--map-auto'];
# $piuparts_opts = ["--basetgz=$HOME/.cache/sbuild/%r-%a.tar.zst", '--fake-essential-packages=systemd-sysv', '--distribution=%r'];

1;
