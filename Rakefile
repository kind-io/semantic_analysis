# frozen_string_literal: true

require 'bundler/gem_tasks'
require 'rspec/core/rake_task'
require 'ffi'

RSpec::Core::RakeTask.new(:spec)

require 'rubocop/rake_task'

RuboCop::RakeTask.new

task default: %i[spec rubocop]

lib_name = 'semantic_analysis'

task :rust_build do
  `cargo build --release`
  `cp ./target/release/lib#{lib_name}.#{FFI::Platform::LIBSUFFIX} ./lib/`
end

task :rust_clean do
  `cargo clean`
  `rm -f ./lib/#{lib_name}/lib#{lib_name}.#{FFI::Platform::LIBSUFFIX}`
end

task :cross_compile_mac_to_linux do
  `cargo build --release --target x86_64-unknown-linux-gnu`
end

task clean: :rust_clean

task build: :rust_build

task default: :build
