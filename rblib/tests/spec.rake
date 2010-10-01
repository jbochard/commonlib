require 'rubygems'
require 'spec/rake/spectask'

namespace :spec do 
    
  desc "Run the ruby test in commonlib in rspec format"
  Spec::Rake::SpecTask.new(:commonlib) do |t|
    t.ruby_opts = ['-rtest/unit']
    t.spec_files = FileList[File.join(File.dirname(__FILE__), '*_test.rb')]
  end
end