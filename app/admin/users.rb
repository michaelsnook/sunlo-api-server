ActiveAdmin.register User do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
  permit_params :email, :password, language_ids: [:id]
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

  form do |f|
    f.inputs 'Edit User' do
      f.input :email
      f.input :password
      f.input :languages, as: :select, multiple: true
      f.input :created_at, disabled: true
    end
    f.actions
  end

end
