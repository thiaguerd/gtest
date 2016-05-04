require "gtest/version"
require "gtest/custom_class"
require 'gtest/custom_class2'
require "core/hash"
require "helpers/gtest_helper"

ActionView::Base.send :include, GtestHelper
module Gtest
	class Engine < ::Rails::Engine; end
end
