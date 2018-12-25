#!/usr/bin/env rake
begin
  require 'bundler/setup'
rescue LoadError
  puts 'You must `gem install bundler` and `bundle install` to run rake tasks'
end
begin
  require 'rdoc/task'
rescue LoadError
  require 'rdoc/rdoc'
  require 'rake/rdoctask'
  RDoc::Task = Rake::RDocTask
end

RDoc::Task.new(:rdoc) do |rdoc|
  rdoc.rdoc_dir = 'rdoc'
  rdoc.title    = 'Blueimp Gallery for Rails'
  rdoc.options << '--line-numbers'
  rdoc.rdoc_files.include('README.rdoc')
  rdoc.rdoc_files.include('lib/**/*.rb')
end

Bundler::GemHelper.install_tasks

# require 'rails/dummy/tasks'

namespace :blueimp do
  namespace :gallery do
    desc "Updates the assets from https://github.com/blueimp/Gallery"
    task :update_assets do
      %w(
        blueimp-gallery.min.css
      ).each do |file|
        url = "https://raw.githubusercontent.com/blueimp/Gallery/master/css/#{file}"
        `wget #{url} -O ./app/assets/stylesheets/#{file}`
      end

      %w(
        jquery.blueimp-gallery.min.js
      ).each do |file|
        url = "https://raw.githubusercontent.com/blueimp/Gallery/master/js/#{file}"
        `wget #{url} -O ./app/assets/javascripts/#{file}`
      end

      %w(
        error.png
        error.svg
        loading.gif
        play-pause.png
        play-pause.svg
        video-play.png
        video-play.svg
      ).each do |file|
        url = "https://raw.githubusercontent.com/blueimp/Gallery/master/img/#{file}"
        `wget #{url} -O ./app/assets/images/#{file}`
      end

      `sed -i "s|/img/|/assets/|g" ./app/assets/javascripts/jquery.blueimp-gallery.min.js`
      `sed -i "s|/img/|/assets/|g" ./app/assets/stylesheets/blueimp-gallery.min.css`
    end
  end
end
