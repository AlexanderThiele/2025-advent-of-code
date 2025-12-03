# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Commands

- **Run**: `dart run`
- **Test all**: `dart test`
- **Test single file**: `dart test test/day1_test.dart`
- **Analyze**: `dart analyze`
- **Format**: `dart format .`
- **Get dependencies**: `dart pub get`

## Architecture

Dart console application for Advent of Code Day 1.

- `bin/day1.dart` - Entry point, runs the solution
- `lib/day1.dart` - Solution logic
- `test/day1_test.dart` - Unit tests

Uses `package:lints/recommended.yaml` for static analysis.
