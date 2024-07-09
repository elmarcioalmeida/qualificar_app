ActiveAdmin.register Usuario do
  permit_params :nome, :email, :password, :password_confirmation, :status

  index do
    selectable_column
    id_column
    column :nome
    column :email
    column :status
    actions
  end

  form do |f|
    f.inputs "Detalhes do Usuário" do
      f.input :nome
      f.input :email
      f.input :password
      f.input :password_confirmation
      f.input :status, as: :select, collection: Usuario.statuses.keys
    end
    f.actions
  end
end
