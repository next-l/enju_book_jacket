# -*- encoding: utf-8 -*-
require 'spec_helper'

# Specs in this file have access to a helper object that includes
# the AnswersHelper. For example:
#
# describe AnswersHelper do
#   describe "string concat" do
#     it "concats two strings with spaces" do
#       helper.concat_strings("this","that").should == "this that"
#     end
#   end
# end
describe EnjuBookJacket::BookJacketHelper do
  fixtures :manifestations

  it "should create a link to amazon" do
    amazon_link('test', 'www.amazon.co.jp').should eq 'http://www.amazon.co.jp/dp/test'
  end

  it "should create a screenshot" do
    screenshot_tag(manifestations(:manifestation_00003)).should eq "<a href=\"http://www.slis.keio.ac.jp/\"><img alt=\"これからの生命科学研究者のためのバイオ特許入門講座\" border=\"0\" height=\"128\" itemprop=\"image\" src=\"http://mozshot.nemui.org/shot?http://www.slis.keio.ac.jp/\" width=\"128\" /></a>"
  end
end
