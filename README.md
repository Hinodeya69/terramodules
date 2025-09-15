# Terraform Modules

- This repository serves as a registry for managing Terraform modules. 

## Tagging

> **Recommended solution for a Terraform module Monorepo**
Use a specialized GitHub Action such as [techpivot/terraform-module-releaser], which automatically detects the modified module 
in the PR and sets a specific tag for that module in the monorepo (format modulename/v1.2.3 for example).

- This solution effectively isolates releases and changelogs by module, even in a multi-module repo.
- Example workflow with modular releaser
- Add this action to your CI/CD workflow .github/workflows/release.yml:
```bash
name: Terraform Module Releaser

on:
  pull_request:
    types: [opened, reopened, synchronize, closed]
    branches:
      - main

permissions:
  contents: write
  pull-requests: write

jobs:
  release:
    runs-on: ubuntu-latest
    steps:
      - name: Checkout code
        uses: actions/checkout@v4

      - name: Terraform Module Releaser
        uses: techpivot/terraform-module-releaser@v1
        with:
          github_token: ${{ secrets.GITHUB_TOKEN }}
```