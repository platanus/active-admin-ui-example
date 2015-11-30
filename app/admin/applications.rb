ActiveAdmin.register Application do
  permit_params :store, :name, :company, :uid, :active, :version, :picture

  filter :name
  filter :store
  filter :company
  filter :uid
  filter :active
  filter :version

  index do
    column :name
    column :store
    column :company
    column :version
    column :active
    actions
  end

  form do |f|
    f.inputs do
      f.input :store
      f.input :name
      f.input :company
      f.input :uid
      f.input :version
      f.input :picture
      f.input :active
    end
    f.actions
  end

  show do
    render partial: "show", locals: { app: resource }
  end
end
