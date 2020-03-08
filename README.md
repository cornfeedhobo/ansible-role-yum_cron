# yum_cron [![Ansible Role](https://img.shields.io/ansible/role/d/63228.svg)](https://galaxy.ansible.com/cornfeedhobo/yum_cron)

Install and configure yum-cron

## Table of content

- [Requirements](#requirements)
- [Default Variables](#default-variables)
  - [yum_cron_apply_updates](#yum_cron_apply_updates)
  - [yum_cron_assumeyes](#yum_cron_assumeyes)
  - [yum_cron_config_group](#yum_cron_config_group)
  - [yum_cron_config_mode](#yum_cron_config_mode)
  - [yum_cron_config_owner](#yum_cron_config_owner)
  - [yum_cron_config_path](#yum_cron_config_path)
  - [yum_cron_configure](#yum_cron_configure)
  - [yum_cron_debuglevel](#yum_cron_debuglevel)
  - [yum_cron_download_updates](#yum_cron_download_updates)
  - [yum_cron_email_from](#yum_cron_email_from)
  - [yum_cron_email_host](#yum_cron_email_host)
  - [yum_cron_email_to](#yum_cron_email_to)
  - [yum_cron_emit_via](#yum_cron_emit_via)
  - [yum_cron_group_list](#yum_cron_group_list)
  - [yum_cron_group_package_types](#yum_cron_group_package_types)
  - [yum_cron_install](#yum_cron_install)
  - [yum_cron_mdpolicy](#yum_cron_mdpolicy)
  - [yum_cron_output_width](#yum_cron_output_width)
  - [yum_cron_package_name](#yum_cron_package_name)
  - [yum_cron_package_state](#yum_cron_package_state)
  - [yum_cron_random_sleep](#yum_cron_random_sleep)
  - [yum_cron_service](#yum_cron_service)
  - [yum_cron_service_enabled](#yum_cron_service_enabled)
  - [yum_cron_service_name](#yum_cron_service_name)
  - [yum_cron_service_state](#yum_cron_service_state)
  - [yum_cron_skip_broken](#yum_cron_skip_broken)
  - [yum_cron_system_name](#yum_cron_system_name)
  - [yum_cron_update_cmd](#yum_cron_update_cmd)
  - [yum_cron_update_messages](#yum_cron_update_messages)
- [Discovered Tags](#discovered-tags)
- [Dependencies](#dependencies)
- [License](#license)
- [Author](#author)

---

## Requirements

- Minimum Ansible version: `2.1`

## Default Variables

### yum_cron_apply_updates

Whether updates should be applied when they are available. Note
that download_updates must also be yes for the update to be applied.

#### Default value

```YAML
yum_cron_apply_updates: no
```

### yum_cron_assumeyes

Uncomment to auto-import new gpg keys (dangerous)

#### Default value

```YAML
yum_cron_assumeyes: 'False'
```

### yum_cron_config_group

#### Default value

```YAML
yum_cron_config_group: root
```

### yum_cron_config_mode

#### Default value

```YAML
yum_cron_config_mode: '0644'
```

### yum_cron_config_owner

#### Default value

```YAML
yum_cron_config_owner: root
```

### yum_cron_config_path

#### Default value

```YAML
yum_cron_config_path: /etc/yum/yum-cron.conf
```

### yum_cron_configure

#### Default value

```YAML
yum_cron_configure: false
```

### yum_cron_debuglevel

Use this to filter Yum core messages
- -4: critical
- -3: critical+errors
- -2: critical+errors+warnings (default)

#### Default value

```YAML
yum_cron_debuglevel: '-2'
```

### yum_cron_download_updates

Whether updates should be downloaded when they are available.

#### Default value

```YAML
yum_cron_download_updates: yes
```

### yum_cron_email_from

The address to send email messages from.
NOTE: 'localhost' will be replaced with the value of system_name.

#### Default value

```YAML
yum_cron_email_from: root@localhost
```

### yum_cron_email_host

Name of the host to connect to to send email messages.

#### Default value

```YAML
yum_cron_email_host: localhost
```

### yum_cron_email_to

List of addresses to send messages to.

#### Default value

```YAML
yum_cron_email_to: root
```

### yum_cron_emit_via

How to send messages. Valid options are stdio and email. If
emit_via includes stdio, messages will be sent to stdout; this is useful
to have cron send the messages. If emit_via includes email, this
program will send email itself according to the configured options.
If emit_via is None or left blank, no messages will be sent.

#### Default value

```YAML
yum_cron_emit_via: stdio
```

### yum_cron_group_list

NOTE: This only works when group_command != objects, which is now the default
List of groups to update

#### Default value

```YAML
yum_cron_group_list: None
```

### yum_cron_group_package_types

The types of group packages to install

#### Default value

```YAML
yum_cron_group_package_types: mandatory, default
```

### yum_cron_install

#### Default value

```YAML
yum_cron_install: false
```

### yum_cron_mdpolicy

#### Default value

```YAML
yum_cron_mdpolicy: group:main
```

### yum_cron_output_width

The width, in characters, that messages that are emitted should be
formatted to.

#### Default value

```YAML
yum_cron_output_width: '80'
```

### yum_cron_package_name

#### Default value

```YAML
yum_cron_package_name: yum-cron
```

### yum_cron_package_state

#### Default value

```YAML
yum_cron_package_state: present
```

### yum_cron_random_sleep

Maximum amout of time to randomly sleep, in minutes. The program
will sleep for a random amount of time between 0 and random_sleep
minutes before running. This is useful for e.g. staggering the
times that multiple systems will access update servers. If
random_sleep is 0 or negative, the program will run immediately.
6*60 = 360

#### Default value

```YAML
yum_cron_random_sleep: '360'
```

### yum_cron_service

#### Default value

```YAML
yum_cron_service: false
```

### yum_cron_service_enabled

#### Default value

```YAML
yum_cron_service_enabled: true
```

### yum_cron_service_name

#### Default value

```YAML
yum_cron_service_name: yum-cron
```

### yum_cron_service_state

#### Default value

```YAML
yum_cron_service_state: started
```

### yum_cron_skip_broken

#### Default value

```YAML
yum_cron_skip_broken: 'False'
```

### yum_cron_system_name

Name to use for this system in messages that are emitted. If
system_name is None, the hostname will be used.

#### Default value

```YAML
yum_cron_system_name: None
```

### yum_cron_update_cmd

What kind of update to use:
- default = yum upgrade
- security = yum --security upgrade
- security-severity:Critical = yum --sec-severity=Critical upgrade
- minimal = yum --bugfix update-minimal
- minimal-security = yum --security update-minimal
- minimal-security-severity:Critical = --sec-severity=Critical update-minimal

#### Default value

```YAML
yum_cron_update_cmd: default
```

### yum_cron_update_messages

Whether a message should be emitted when updates are available,
were downloaded, or applied.

#### Default value

```YAML
yum_cron_update_messages: yes
```

## Discovered Tags

**_yum_cron_**

**_yum_cron-configure_**

**_yum_cron-install_**

**_yum_cron-service_**


## Dependencies

None.

## License

MIT

## Author

cornfeedhobo
