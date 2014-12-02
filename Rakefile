# -*- coding: utf-8 -*-
$:.unshift("/Library/RubyMotion/lib")
require 'motion/project/template/ios'

begin
  require 'bundler'
  Bundler.require
rescue LoadError
end

Motion::Project::App.setup do |app|
  app.name = 'controller_retain'

  app.sdk_version = '8.1'
  app.deployment_target = '7.0'

  app.identifier = ''
  app.codesign_certificate = ''
  app.provisioning_profile = ''
  app.entitlements['get-task-allow'] = true
end
