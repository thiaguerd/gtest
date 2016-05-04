require "gtest/version"
require "core/hash"
require "helpers/gtest_helper.rb"
ActionView::Base.send :include, GtestHelper
module Gtest
	class Engine < ::Rails::Engine; end
end
