require 'foodcritic'
require 'rubocop/rake_task'

# Style tests. Foodcritic
namespace :style do
  desc 'Run Chef style checks'
  FoodCritic::Rake::LintTask.new(:chef) do |t|
    t.options = {
      fail_tags: ['any'],
      tags: ['~FC005']
    }
  end

  RuboCop::RakeTask.new(:rubocop)
end

desc 'Run all style checks'
task style: ['style:chef', 'style:rubocop']

# Default
task default: ['style']
