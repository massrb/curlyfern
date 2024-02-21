
ActiveAdmin.register Image do
  permit_params :name, :image_data

  form do |f|
    f.inputs do
      f.input :name
      f.input :image_data, as: :file
    end
    f.actions
  end

  show do 
    attributes_table do
      row :name
      row :image do |img| 
        image_tag img.image_data.variant(:thumb)
      end
    end
  end

  index do
    column :name
    column "image" do |img|
      image_tag img.image_data.variant(:thumb)
    end
    actions
  end

  index as: :grid do |img|
    image_tag img.image_data.variant(:thumb)
  end

  filter :name
  actions :all, except: []

end
  
 