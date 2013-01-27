require 'spec_helper'
require './app/loader.rb'

describe Loader do

  before(:all) do
    l = Loader.new
    l.load_classes
  end

  it "should load projects" do
    projects = Project.all
    projects.size.should eq(1)
  end

  it "should load commits" do
    commits = Commit.all
    commits.size.should eq(58)
  end

end
