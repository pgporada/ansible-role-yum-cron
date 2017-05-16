# Overview: pgporada.yumcron
This role will install and configure yum-cron to update your CentOS servers hourly and nightly. Check the `defaults/main.yml` file to see all the tunables.

- - - -
# Example playbook

Using this playbook with the name of `pgporada.yumcron`

    - name: Some Playbook
      hosts: localhost
      become: true
      become_method: sudo
      roles:
        - pgporada.yumcron


or if you have this locally

    - name: Some Playbook
      hosts: localhost
      connection: local
      become: true
      become_method: sudo
      roles:
        - ../ansile-role-yum-cron

- - - -
# Testing

You will need a ruby 2.x environment comprising gem and bundler.

    bundle install
    bundle update
    bundle exec kitchen create
    bundle exec kitchen converge
    bundle exec kitchen verify
    bundle exec kitchen destroy

or all in one shot

    bundle install
    bundle exec kitchen test

To lint any yaml files, you'll need pyamllint and then run the following command.

    find -type f -name "*.yml" -exec yamllint -f parsable {} \;

Fix your errors and open a PR! If that's difficult, try and ask for help.

- - - -
# Music
[Jaya the Cat - State of Emergency](https://www.youtube.com/watch?v=OO50xarOQtQ)

- - - -
# Author Information and License
GPLv3

(C) 2016 [Phil Porada](https://philporada.com)
