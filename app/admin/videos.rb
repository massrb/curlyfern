ActiveAdmin.register Video do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :title, :description, :file
  #
  # or
  #
  # permit_params do
  #  permitted = [:title, :description, :file]
  #  permitted << :other if params[:action] == 'create' && current_user.admin?
  #  permitted
  # end
  
  form do |f|
    f.inputs do
      f.input :title
      f.input :description
      f.input :file, as: :file
    end
    f.actions
  end

  show do
    attributes_table do
      row :title
      row :description
      row :file do |video|
        video_tag url_for(video.file.url), controls: true, width: '300'
      end
    end
  end

  index do
    selectable_column
    id_column
    column :title
    column :description
    column :file do |video|
      video_tag url_for(video.file.url), controls: true, width: '100'
    end
    actions
  end

end
