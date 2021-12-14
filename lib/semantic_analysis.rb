# frozen_string_literal: true

require 'ffi'
require_relative 'semantic_analysis/version'
require 'rutie'

# Semantic Analysis Module
module SemanticAnalysis
  class Error < StandardError; end

  lib_path = File.join(__dir__, '../lib/')
  Rutie.new(:semantic_analysis, { lib_path: lib_path }).init 'Init_semantic_analyzer', __dir__
end
