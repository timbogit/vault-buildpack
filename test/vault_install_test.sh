#!/usr/bin/env bash

testVaultInstall() {
  assertNotNull "Vault is not null" "echo $(command -v "vaultfoobar")"
}