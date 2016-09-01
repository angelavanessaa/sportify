ActiveAdmin.register Product do
permit_params :category_id, :name, :description, :avatar
	form :html => { :enctype => "multipart/form-data" } do |f|
	  f.inputs "Product", :multipart => true do
	  	f.input :category
	    f.input :name
	    f.input :description
	    f.input :avatar, :required => false, :as => :file, :hint => f.template.image_tag(f.object.avatar.url(:thumb))
	  end
	  f.actions
	end

	index do
	  id_column
	  column :category
	  column :name
	  column :description
	  actions
	end

show do |product|
  attributes_table do
  	row :id
  	row :category
  	row :name
  	row :description
		row :avatar do
				# image_tag (product.avatar.url(:thumb))
				image_tag(product.avatar.url(:thumb))
    	end
    row :created_at
    row :updated_at
   	end
	end
end
