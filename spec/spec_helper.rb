# adds parent folder ("..") to the load path
$:<< File.join(File.dirname(__FILE__), '..')

require 'FinerDiner/menu_item'
require 'FinerDiner/menu'
require 'FinerDiner/order'
