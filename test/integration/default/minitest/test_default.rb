require "minitest/autorun"
require "minitest/reporters"
Minitest::Reporters.use! [Minitest::Reporters::JUnitReporter.new(reports_dir="/tmp/result/junit")]

describe 'check docker' do
  it "check docker" do
    assert system('which docker'), 'docker is not installed'
  end
end
