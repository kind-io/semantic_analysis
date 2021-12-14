# frozen_string_literal: true

require "ffi"
require_relative "semantic_analysis/version"
require "rutie"

# Semantic Analysis Module
module SemanticAnalysis
  class Error < StandardError; end

  Rutie.new(:semantic_analysis).init "Init_semantic_analyzer", __dir__
end
