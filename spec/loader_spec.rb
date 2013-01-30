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
    commit = commits[0]
    commit.commit_message.class.should eq(CommitMessage)
    commit.project.class.should eq(Project)
  end

  it "should load messages" do
    messages = CommitMessage.all
    message = messages[0]
    messages.size.should eq(58)
    message.message.class.should eq(String)
  end

end
