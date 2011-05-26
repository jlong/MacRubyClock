#
#  MainWindowController.rb
#  Clock
#
#  Created by John W. Long on 5/26/11.
#

class MainWindowController < NSWindowController
  
  attr_accessor :label
  
  def awakeFromNib
    @timer = NSTimer.scheduledTimerWithTimeInterval(0.25, target:self, selector: :tick, userInfo:nil, repeats:true)
  end
  
  def tick
    label.stringValue = Time.now.strftime("%l:%M %p")
  end
  
end