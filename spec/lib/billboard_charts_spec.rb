require "billboard_charts"

describe BillboardCharts do

  context "without an api key" do
    subject { lambda { BillboardCharts.new() } }

    it "should raise an exception" do
      subject.should raise_exception("BillboardCharts::ApiKeyNotProvided")
    end
  end

  let(:key) {'2xp4dgfb7gg8egegtqukj3zf'} 

  subject { BillboardCharts.new(key) }

  it ".api_key" do
    subject.api_key.should == key
  end

  it ".endpoint" do
    subject.endpoint.should == 'http://api.billboard.com/apisvc/chart/v1/list'
  end

  it ".url" do
    url = "#{subject.endpoint}?api_key=#{key}&format=json"
    puts subject.url
    subject.url.should == url
  end

  context ".latest" do
    it "should exist" do
      subject.latest.should be
    end

    it "should call API endpoint" do
      subject.latest.should_receive('open') { true }
      subject.latest
    end

  end
end
