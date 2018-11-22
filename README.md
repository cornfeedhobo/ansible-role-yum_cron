yum_cron [![Ansible Role](https://img.shields.io/ansible/role/d/33089.svg)](https://galaxy.ansible.com/cornfeedhobo/yum_cron)
========

Install and configure yum-cron

    ansible-galaxy install cornfeedhobo.yum_cron

Role Variables
--------------

|Name|Default Value|
|-|-|
| `yum_cron_install` | `False` |
| `yum_cron_configure` | `False` |
| `yum_cron_service` | `False` |
| `yum_cron_package_state` | `present` |
| `yum_cron_service_state` | `started` |
| `yum_cron_service_enabled` | `True` |
| `yum_cron_update_cmd` | `security` |
| `yum_cron_update_messages` | `yes` |
| `yum_cron_download_updates` | `yes` |
| `yum_cron_apply_updates` | `no` |
| `yum_cron_random_sleep` | `360` |
| `yum_cron_system_name` | `None` |
| `yum_cron_emit_via` | `stdio` |
| `yum_cron_ouput_width` | `80` |
| `yum_cron_email_from` | `root@localhost` |
| `yum_cron_email_to` | `root` |
| `yum_cron_email_host` | `localhost` |
| `yum_cron_group_list` | `None` |
| `yum_cron_group_package_types` | `mandatory, default` |
| `yum_cron_debuglevel` | `-2` |
| `yum_cron_skip_broken` | `True` |
| `yum_cron_mdpolicy` | `group:main` |
| `yum_cron_assumeyes` | `False` |
| `yum_cron_hourly_update_cmd` | `security` |
| `yum_cron_hourly_update_messages` | `no` |
| `yum_cron_hourly_download_updates` | `no` |
| `yum_cron_hourly_apply_updates` | `no` |
| `yum_cron_hourly_random_sleep` | `15` |
| `yum_cron_hourly_system_name` | `None` |
| `yum_cron_hourly_emit_via` | `stdio` |
| `yum_cron_hourly_ouput_width` | `80` |
| `yum_cron_hourly_email_from` | `{{ yum_cron_email_from }}` |
| `yum_cron_hourly_email_to` | `{{ yum_cron_email_to }}` |
| `yum_cron_hourly_email_host` | `{{ yum_cron_email_host }}` |
| `yum_cron_hourly_group_list` | `None` |
| `yum_cron_hourly_group_package_types` | `mandatory, default` |
| `yum_cron_hourly_debuglevel` | `-2` |
| `yum_cron_hourly_skip_broken` | `True` |
| `yum_cron_hourly_mdpolicy` | `group:main` |
| `yum_cron_hourly_assumeyes` | `False` |

Example Playbook
----------------

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

    - hosts: servers
      roles:
         - role: cornfeedhobo.yum_cron
           yum_cron_install: true       # toggle management of the package
           yum_cron_configure: true     # toggle management of config files
           yum_cron_service: true       # toggle management of the service

License
-------

MIT
