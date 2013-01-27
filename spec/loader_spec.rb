require './app/loader.rb'

describe Loader do
  it "should load all models" do
    l = Loader.new
    l.load_classes
  end
  it "should load Projects" do
    Project.all
  end
end
