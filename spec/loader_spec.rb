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
    p = projects[0]
    p.commits.first.class.should eq(Commit)
  end

  it "should load commits" do
    commits = Commit.all
    commits.size.should eq(58)
    commit = commits[0]
    commit.commit_message.class.should eq(CommitMessage)
    commit.project.class.should eq(Project)
    commit.author.class.should eq(Author)
    commit.commit_diff.class.should eq(CommitDiff)
  end

  it "should load messages" do
    messages = CommitMessage.all
    message = messages[0]
    messages.size.should eq(58)
    message.message.class.should eq(String)
  end

  it "should load authors" do
    authors = Author.all
    author = authors[0]
    authors.size.should eq(1)
  end

  it "should load diffs" do
    diffs = CommitDiff.all
    diff = diffs[0]
    diffs.size.should eq(58)
  end

  it "should load modifications" do
    modifications = Modification.all
    modifications.size.should eq(311)
    modification = modifications[0]
    modification.artifact.class.should eq(Artifact)
  end
  
  it "should load artifacts" do
    artifacts = Artifact.all
    artifacts.size.should eq(101)
    a = artifacts[0]
    a.project.class.should eq(Project)
  end

  it "should load cc result" do
    cc_results = CCResult.all
    cc_results.size.should eq(230)
    cc = cc_results[0]
    cc.source_code.class.should eq(SourceCode)
  end

  it "should load source code" do
    sources = SourceCode.all
    sources.size.should eq(311)
    s = sources[0]
    s.modification.class.should eq(Modification)
  end

end
