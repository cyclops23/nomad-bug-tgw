#!/usr/bin/env zsh

consul write config ext-dynamodb-service-defaults.hcl
consul services register ext-dynamodb-service.hcl
nomad job run ext-dynamodb-tgw-job.hcl
