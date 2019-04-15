#!/bin/bash
cd /Users/michaelmellouk/zf/terraform/inspec-gcp/my-profile
shopt -u extglob; set +H
cd ~/zf/terraform/inspec-gcp/my-profile
inspec exec . -t gcp:// --attrs attributes.yml
