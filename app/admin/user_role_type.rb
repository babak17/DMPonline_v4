ActiveAdmin.register UserRoleType do

	index do   # :description, :name
  	column I18n.t('admin.title'), :sortable => :name do |user_n|
        link_to user_n.name, [:admin, user_n]
    end
     column I18n.t('admin.desc'),:description do |descr|
  			if !descr.description.nil? then
  				descr.description.html_safe
  			end
  		end
  	
  	default_actions
  end

end