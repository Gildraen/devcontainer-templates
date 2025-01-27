# Dev Container Usage and Development Guide

This repository provides custom Dev Container templates for a seamless development experience. Below are the essential instructions to contribute to template development and testing.

## Using the Devcontainer

_To be updated._

## Developing and Testing the Templates

### Development

To modify or create a new template:
1. Add or update the configuration in the `src/<template-name>` directory.
2. Ensure all necessary fields are included in `devcontainer-template.json` and `.devcontainer/devcontainer.json`.

### Testing

#### Test Scripts
Each template requires a test script located in the `test/<template>` directory:
- Create a `test.sh` file for your template in `test/<template>`.
- This script should define all the necessary steps to validate the template.

#### Running Tests
Use the provided `Makefile` commands for building and testing templates:

- **Build a template**:
    ```bash
    make build TEMPLATE=<template-name>

- **Test a template**:
    ```bash
    make test TEMPLATE=<template-name>

- **Build and test a template**:
    ```bash
    make all TEMPLATE=<template-name>
