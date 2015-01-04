$:.unshift(File.expand_path("..", __FILE__))
require 'rdf' # @see http://rubygems.org/gems/rdf
begin
  require 'byebug'  # REMOVE ME
rescue LoadError
end

module RDF
  ##
  # **`RDF::Tabular`** is a Tabular/CSV extension for RDF.rb.
  #
  # @see http://w3c.github.io/csvw/
  #
  # @author [Gregg Kellogg](http://greggkellogg.net/)
  module Tabular
    require 'rdf/tabular/format'
    autoload :CSVW,     'rdf/tabular/csvw'
    autoload :JSON,     'rdf/tabular/literal'
    autoload :Metadata, 'rdf/tabular/metadata'
    autoload :Reader,   'rdf/tabular/reader'
    autoload :VERSION,  'rdf/tabular/version'
  end
end