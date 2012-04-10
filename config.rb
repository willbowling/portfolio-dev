require "slim"
require "susy"

set :layout,     :default
set :images_dir, "assets/img"
set :css_dir,    "assets/css"
set :js_dir,     "assets/js"

set :markdown, :layout_engine => :slim, :tables => true, :autolink => true
set :markdown_engine, :redcarpet

activate :relative_assets

require "rack/tidy"
use Rack::Tidy,
  "break-before-br"      => false,
  "indent"               => true,
  "indent-attributes"    => false,
  "indent-spaces"        => 2,
  "markup"               => true,
  "punctuation-wrap"     => false,
  "sort-attributes"      => "none",
  "split"                => false,
  "tab-size"             => 2,
  "vertical-space"       => true,
  "wrap"                 => 160,
  "decorate-inferred-ul" => true,
  "doctype"              => 'html5',
  "wrap-attributes"      => false,
  "wrap-php"             => true,
  "wrap-script-literals" => false,
  "wrap-sections"        => true,
  "output-xhtml"         => true,
  "new-inline-tags"      => "cfif, cfelse, ripts, msup",
  "new-blocklevel-tags"  => "cfoutput, cfquery, header, nav, footer, article, section, figure, datalist",
  "new-empty-tags"       => "cfelse"


# Build-specific configuration
configure :build do
  compass_config do |config|
    config.line_comments = false
    config.output_style = :expanded
  end

  # activate :minify_css
  # activate :minify_javascript
end