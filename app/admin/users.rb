ActiveAdmin.register User do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
  permit_params :email, :password, language_ids: []
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

  form do |f|
    f.inputs 'User Details' do
      f.input :email
      if controller.action_name == 'new'
        f.input :password
      end
      f.input :languages, as: :select, multiple: true
      if controller.action_name == 'edit'
        f.input :created_at, disabled: true
      end
    end
    f.actions
  end

end
