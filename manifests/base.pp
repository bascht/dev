class lucid32 {
    exec { "apt_update":
        command => "/usr/bin/apt-get update && touch /tmp/apt.update",
        onlyif => "/bin/sh -c '[ ! -f /tmp/apt.update ] || /usr/bin/find /etc/apt -cnewer /tmp/apt.update | /bin/grep . > /dev/null'",
        before => Package["base_packages"]
    }

    $basePackages = ["build-essential", "bison", "openssl", "libreadline6", "libreadline6-dev",
        "curl", "git-core", "zlib1g", "zlib1g-dev", "libssl-dev", "libyaml-dev", "libsqlite3-0",
        "libsqlite3-dev", "sqlite3", "libxml2-dev", "libxslt-dev", "autoconf"]

    package {"base_packages": name => $basePackages, ensure => present}


}

include lucid32
