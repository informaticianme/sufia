require 'spec_helper'

describe FitsDatastream do
  before do
    @file = GenericFile.new
    @file.add_file_datastream(File.new(Rails.root + 'spec/fixtures/world.png'), :dsid=>'content')
    @file.save
  end
  it "should have a format label" do
    @file.format_label.should == ["Portable Network Graphics"]
  end
  it "should have a mime type" do
    @file.mime_type.should == ["image/png"]
  end
  it "should have a file size" do
    @file.file_size.should == ["4218"]
  end
  it "should have a last modified timestamp" do
    @file.last_modified.should_not be_empty
  end
  it "should have a filename" do
    @file.filename.should_not be_empty
  end
  it "should have a checksum" do
    @file.original_checksum.should == ["28da6259ae5707c68708192a40b3e85c"]
  end
end

