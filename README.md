# Minecraft RCON CLI Client

## Description

Mcrcon is powerful IPv6 compliant minecraft rcon client with bukkit coloring support.
It is well suited for remote administration and to be used as part of automated server maintenance scripts.
Does not cause "IO: Broken pipe" or "IO: Connection reset" spam in server console.

## Features

- Interacive terminal mode. Keeps the connection alive.
- Send multiple commands in one command line.
- Silent mode. Does not print rcon output.
- Support for bukkit coloring on Windows and Linux (sh compatible shells).
- Multiplatform code. Compiles on many platforms with minor changes.
- IPv6 support.

## Changelog

 * 0.0.5
    - IPv6 support!
       Thanks to 'Tanja84dk' for addressing the real need of IPv6.
    - Fixed bug causing crash / segmentation fault (invalid write) when receiving malformed rcon packet.
    - Program makes use of C99 feature (variable-length arrays) so "-std=gnu99" flag on
      GCC-compiler must be used to avoid unecessary warnings.
    - Rcon receive buffer is now bigger (2024 bytes -> 10240 bytes).
       Thanks to 'gman_ftw' @ Bukkit forums.
    - Fixed invalid error message when receiving empty rcon packet (10 bytes).
       Thanks to 'pkmnfrk' @ bukkit forums.
    - Terminal mode now closes automatically when rcon socket is closed by server
      or if packet size cannot be retrieved correctly.
    - Client now tries to clean the incoming socket data if last package was out of spec.

 * 0.0.4
    - Reverted back to default getopts options error handler (opterr = 1).
      Custom error handler requires rewriting.
    - Some comestic fixes in program output strings.
    - Program usage(); function now waits for enter before exiting on Windows.
 * 0.0.3
    - Colors are now supported on Windows too!
    - Terminal mode is now triggered with "-t" flag. "-i" flag still works for
      backwards compatibility.
    - Bug fixes (Packet size check always evaluating false and color validity
      check always evaluating true)
 * 0.0.2
    - License changed from 'ISC License' to 'zlib/libpng License'.
    - Bug fixes & code cleanups
    - Interactive mode (-i flag). Client acts as interactive terminal.
    - Program return value is now the number of rcon commmands sent successfully.
      If connecting or authentication fails, the return value is -1.
    - Colors are now enabled by default. Now '-c' flag disables the color support.
 * 0.0.1
    - Added experimental support for bukkit colors.
      Should work with any sh compatible shell.
    - Packet string data limited to max 2048 (DATA_BUFFSIZE) bytes.
      No idea how Minecraft handles multiple rcon packets.
      If someone knows, please mail me so I can implement it.

## License & Copyright

The original version of this software was written by Tiiffi and the source lies on [SourceForge](https://sourceforge.net/projects/mcrcon/).

This fork is licensed under the GPLv3 in addition to the original libpng/zlib license. A copy the license is distributed as part of
the source package and can be found in [LICENSE](LICENSE).


