#!/usr/bin/env bats

@test "yum-cron should be installed" {
    run rpm -q yum-cron
    [ "$status" -eq 0 ]
    [[ "$output" =~ "yum-cron" ]]
}

@test "yum-cron should be enabled" {
    run systemctl is-enabled yum-cron.service
    [ "$status" -eq 0 ]
}

@test "yum-cron should be running" {
    run systemctl is-active yum-cron.service
    [ "$status" -eq 0 ]
}

@test "A cron handler should be installed" {
    run rpm -q cronie
    [ "$status" -eq 0 ]
}

@test "A cron handler should be enabled" {
    run systemctl is-enabled crond.service
    [ "$status" -eq 0 ]
}

@test "A cron handler should be running" {
    run systemctl is-active crond.service
    [ "$status" -eq 0 ]
}
