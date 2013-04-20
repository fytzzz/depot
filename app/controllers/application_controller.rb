# encoding: utf-8
class ApplicationController < ActionController::Base
  protect_from_forgery
  include Redmine::I18n
  before_filter :check_settings

  private
  #检查配置文件是否更新
  def check_settings
    Setting.check_cache
  end
end
