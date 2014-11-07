#!/usr/bin/env ruby

git_bundles = %w{
	git://github.com/scrooloose/syntastic.git
	git://github.com/tpope/vim-fugitive.git
	git://github.com/rodjek/vim-puppet.git
	git://github.com/godlygeek/tabular.git
	git://github.com/tmatilai/gitolite.vim.git
	git://github.com/vim-scripts/logstash.vim
}

require 'fileutils'
require 'open-uri'

bundles_dir = File.join(File.dirname(__FILE__), "bundle")

FileUtils.rm_rf(bundles_dir)
FileUtils.mkdir(bundles_dir)
FileUtils.cd(bundles_dir)

git_bundles.each do |url|
  puts url
  `git clone -q #{url}`
end

Dir["*/.git"].each {|f| FileUtils.rm_rf(f) }
