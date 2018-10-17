ActiveAdmin.register Deck do
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
    permit_params :user_id, :language_id
  #
  # or
  #
  # permit_params do
  #   permitted = [:permitted, :attributes]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  form do |f|
    f.inputs 'Edit Deck' do
      f.input :user_id, as: :select, collection: User.all
      f.input :language_id, as: :select, collection: Language.all
      f.input :created_at, disabled: true
    end
    f.actions
  end

  end
