class Admin::SettingsController < Admin::ApplicationController

  # GET /admin/settings
  def edit
    @settings = Setting.all
  end

  # POST /admin/settings
  def create
    settings = params[:setting]
    if settings
      settings.each do |setting, value|
        value = value.gsub(/(,)+/, "")
        float = if %w(funded funding_goal).include?(setting)
          value.to_f.round(2).abs
        else
          value.to_i.abs
        end
        unless Setting[setting] == float
          Setting[setting] = float
          CacheManager.expire_home
        end
      end
    end
    redirect_to edit_admin_settings_path, notice: "Settings have been successfully updated."
  end

end
