# Run `just` with no arguments to list available recipes.
default:
    @just --list

# Show the installed Rust tool versions.
rust-version:
    @echo "Rust command-line tools:"
    rustc --version
    cargo --version
    rustup --version
    rustfmt --version
    cargo clippy --version

# Format Rust source files.
format:
    cargo fmt --all

# Check the code for common mistakes.
lint:
    cargo clippy --all-targets --all-features -- -D warnings

# Run the test suite.
test:
    cargo test

# Check that the project compiles.
check:
    cargo check --all-targets

# Build and run the application.
run:
    cargo run

# Build an optimized release version.
release:
    cargo build --release

# Run the formatting, lint, and test checks.
all: format lint test
