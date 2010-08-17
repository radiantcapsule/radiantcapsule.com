require "erb"
require "ostruct"
require "pathname"
require "pp"

namespace :site do

  task :load_site do
    @site = Nanoc3::Site.new('.')
    @site.load_data
  end

  task :compile do
    system "nanoc3 co"
  end

  task :clean do
    rm_rf "output"
  end

  desc "Build the whole damn site"
  task :build => :compile
end

