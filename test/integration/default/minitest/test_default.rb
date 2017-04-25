require "minitest/autorun"
require "minitest/reporters"
Minitest::Reporters.use! [Minitest::Reporters::JUnitReporter.new(reports_dir="/tmp/result/junit")]

describe 'check docker' do
  it "check docker" do
    assert system('which docker'), 'docker is not installed'
  end
end

describe 'check docker python 3.6.1' do
  it "check docker python 3.6.1" do
    assert system('docker images python:3.6.1 |wc -l | grep 2'), 'docker python 3.6.1 is not pulled'
  end
end

describe 'check docker python 2.7.13' do
  it "check docker python 2.7.13" do
    assert system('docker images python:2.7.13 |wc -l | grep 2'), 'docker python 2.7.13 is not pulled'
  end
end
