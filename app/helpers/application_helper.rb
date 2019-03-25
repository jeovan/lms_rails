module ApplicationHelper
   def stylesheet_exists?(stylesheet)
    return false if stylesheet == 'application'
    path = "#{Rails.root}/app/assets/stylesheets/#{stylesheet}"
    extensions = %w(.scss .erb .scss.erb .css) + [""]
    extensions.inject(false){|truth, extension| truth || File.exists?("#{path}#{extension}")}
  end

  def javascript_exists?(script)
    return false if script == 'application'
    File.exists?("#{Rails.root}/app/assets/javascripts/#{script}.js")
  end
  
end
