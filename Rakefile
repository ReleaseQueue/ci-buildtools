require 'foodcritic'

# Style tests. Foodcritic
namespace :style do
  desc 'Run Chef style checks'
  FoodCritic::Rake::LintTask.new(:chef) do |t|
    t.options = {
      fail_tags: ['any'],
      tags: ['~FC005']
    }
  end
end

desc 'Run all style checks'
task style: ['style:chef']

# Default
task default: ['style']