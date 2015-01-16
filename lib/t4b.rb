# !/usr/bin/env ruby

require "t4b/version"
require 'time'

class Time4Break

  def self.woken
    `echo $(sysctl -a | grep waketime)`.split[-2]
  end

  def self.working_time
    Time.now - Time.parse(woken) 
  end

  def self.need_some_rest?
    working_time > 3600
  end

  def self.t4b
    return "Please, leave your laptop alone for at least 5 minutes!" if need_some_rest?
    "Carry on working"
  end

end

