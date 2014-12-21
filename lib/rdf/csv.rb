$:.unshift(File.expand_path("..", __FILE__))
require 'rdf' # @see http://rubygems.org/gems/rdf

module RDF
  ##
  # **`RDF::CSV`** is a CSV extension for RDF.rb.
  #
  # @see http://w3c.github.io/csvw/
  #
  # @author [Gregg Kellogg](http://greggkellogg.net/)
  module LD
    require 'rdf/csv/format'
    autoload :Reader,  'rdf/csv/reader'
    autoload :VERSION, 'rdf/csv/version'
    autoload :Writer,  'rdf/csv/writer'
  end
end