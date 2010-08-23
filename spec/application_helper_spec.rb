require 'spec_helper'
require 'helpers/application_helper'

class Subject
  include ApplicationHelper
end

describe ApplicationHelper do
  subject { Subject.new }
  context "status color" do
    it "should return green for less than or equal 60" do
      subject.status_color(59).should == :green
    end

    it "should return yellow for more than 60 and less than or equal 130" do
      subject.status_color(120).should == :yellow
    end

    it "should return red for more than 130" do
      subject.status_color(131).should == :red
    end
    
    it "should accept a string instead of a number" do
      subject.status_color('59').should == :green
      subject.status_color('120').should == :yellow
      subject.status_color('131').should == :red
    end

  end
end