require_relative 'spec_helper'

describe VimeoId do

  subject { VimeoId }

  %w[
    https://vimeo.com/11111111
    http://vimeo.com/11111111
    https://www.vimeo.com/11111111
    http://www.vimeo.com/11111111
    https://vimeo.com/channels/11111111
    http://vimeo.com/channels/11111111
    https://vimeo.com/groups/name/videos/11111111
    http://vimeo.com/groups/name/videos/11111111
    https://vimeo.com/album/2222222/video/11111111
    http://vimeo.com/album/2222222/video/11111111
    https://vimeo.com/11111111?param=test
    http://vimeo.com/11111111?param=test
  ].each do |url|

    it "extracts 11111111 from #{url}" do
      subject.from(url).should == "11111111"
    end

  end


end
