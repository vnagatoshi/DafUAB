ActiveAdmin.register Department do
   menu :label => "Departamentos"
   filter :name,:label => "Nombre", :as =>:select

   form do |f|
     f.inputs "Details" do
       f.input :name

     end
     f.inputs "Content" do
       f.input :description
     end
     f.buttons
   end




  
end
