# System platform lists and iteration helpers.
{ lib }:

{
  # Target systems (where binaries will RUN - Raspberry Pi)
  rpiSystems = [
    "aarch64-linux"
    "armv7l-linux"
    "armv6l-linux"
  ];

  # Build systems (where we compile FROM - your workstation).
  # Limited to architectures with well-tested nixpkgs cross-compilation to ARM
  # and Hydra binary cache coverage. The cross-compilation mechanism is generic,
  # so other Linux systems could be added here if needed, but would require
  # building the entire toolchain from source.
  buildSystems = [
    "x86_64-linux"
    "aarch64-linux"
  ];

  allSystems = lib.systems.flakeExposed;
}
