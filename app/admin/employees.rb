ActiveAdmin.register Employee do
	form :partial => "form"    

	index do
		column "Image" do |employee|
			image_tag(employee.photo.url(:thumb))
		end
		column :first_name
		column :last_name
		column :dept

		default_actions
	end

	filter :first_name
	filter :last_name
	filter :dept
	filter :startDate
	filter :originLocation

	controller do 

		def new
			@employee = Employee.new
		end

		def create
			@employee = Employee.new(params[:employee])
			if @employee.save
				flash[:notice] = "Employee added."
				redirect_to admin_employees_path
			else
				flash[:alert] = "Employee has not been added."
				render :action => "new"
			end
			
		end

		def update

			@employee = Employee.find(params[:id])

			if @employee.update_attributes(params[:employee])
      			flash[:notice] = "Employee has been updated."
      			redirect_to admin_employees_path
    		else
      			flash[:alert] = "Employee has not been updated."
      			render :action => "edit"
    		end
			
		end

	end

	
end
