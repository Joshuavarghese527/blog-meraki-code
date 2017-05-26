ActiveAdmin.register Post do

permit_params :title, :body, :description

form do |f|
  f.inputs do
    f.input :title
    f.input :description
    f.input :body, :as => :ckeditor, input_html: {:ckeditor => {:toolbar => 'FULL'}}, class: "form-control"
  end
  f.button :submit
end

end
