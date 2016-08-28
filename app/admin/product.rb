ActiveAdmin.register Product do
	form :html => { :enctype => "multipart/form-data" } do |f|
	  f.inputs "Product", :multipart => true do
	  	f.input :category
	    f.input :name
	    f.input :description
	    f.input :image, :required => false, :as => :file
	  end
	  f.actions
	end

permit_params :category_id, :name, :description, :avatar

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
		row "Image" do
				image_tag (product.avatar.url(:thumb))
    	end
    row :created_at
    row :updated_at
   	end
	end
end
