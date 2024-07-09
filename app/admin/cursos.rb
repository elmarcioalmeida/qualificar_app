ActiveAdmin.register Curso do
  permit_params :nome

  index do
    selectable_column
    column :id
    column :nome
    actions
  end

  form do |f|
    f.inputs do
      f.input :nome
    end
    f.actions
  end
end
