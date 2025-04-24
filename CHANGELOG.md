# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.1.0/),
and this project adheres to
[Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

### Added

- Output called `record_data` that has the computed data that was used to create
  the records.

### Changed

- License the project under the MIT License.

## [0.3.5] - 2025-04-23

### Fixed

- Use the conditional operator to set the `name` and `type` of a record type
  lazily evaluate the dynamic values.

## [0.3.4] - 2025-04-23

### Fixed

- Use defaults with correct types in the record map.
- Look the members of the input record map up correctly.

## [0.3.3] - 2025-04-23

### Fixed

- Set `0` as the default value of the `priority` variable to prevent error
  caused by the `null` value in `terraform-cloudflare-record` as logical
  operators in Terraform are always evaluated fully.

## [0.3.2] - 2025-04-23

### Changed

- **BREAKING**: Update minimum required Terraform version to `1.9.0`.
- Update `terraform-cloudflare-record` to `v0.3.4`.

### Fixed

- Add the missing `priority` input to `terraform-cloudflare-record`.

## [0.3.1] - 2025-04-23

### Changed

- Updated `terraform-cloudflare-record` to `v0.3.3`.
- Update minimum required Terraform version to `1.3.0`.

## [0.3.0] - 2025-04-22

### Changed

- **BREAKING**: Updated `terraform-cloudflare-record` to `v0.3.1`.
- **BREAKING**: Update minimum required Terraform version to `1.9.0`.

## [0.2.0] - 2025-04-22

### Changed

- Change the name of the module from `terraform-cloudflare-bulk-record` to
  `terraform-cloudflare-record-set`.

## [0.1.0] - 2025-04-21

- Initial release of the module for creating Cloudflare records in bulk.

[unreleased]:
  https://github.com/visiosto/terraform-cloudflare-record-set/compare/v0.3.5...HEAD
[0.3.5]:
  https://github.com/visiosto/terraform-cloudflare-record-set/compare/v0.3.4...v0.3.5
[0.3.4]:
  https://github.com/visiosto/terraform-cloudflare-record-set/compare/v0.3.3...v0.3.4
[0.3.3]:
  https://github.com/visiosto/terraform-cloudflare-record-set/compare/v0.3.2...v0.3.3
[0.3.2]:
  https://github.com/visiosto/terraform-cloudflare-record-set/compare/v0.3.1...v0.3.2
[0.3.1]:
  https://github.com/visiosto/terraform-cloudflare-record-set/compare/v0.3.0...v0.3.1
[0.3.0]:
  https://github.com/visiosto/terraform-cloudflare-record-set/compare/v0.2.0...v0.3.0
[0.2.0]:
  https://github.com/visiosto/terraform-cloudflare-record-set/compare/v0.1.0...v0.2.0
[0.1.0]:
  https://github.com/visiosto/terraform-cloudflare-record-set/releases/tag/v0.1.0
