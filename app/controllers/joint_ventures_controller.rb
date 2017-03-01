class JointVenturesController < ApplicationController
  def index
    @joint_ventures = JointVenture.all

    render("joint_ventures/index.html.erb")
  end

  def show
    @joint_venture = JointVenture.find(params[:id])

    render("joint_ventures/show.html.erb")
  end

  def new
    @joint_venture = JointVenture.new

    render("joint_ventures/new.html.erb")
  end

  def create
    @joint_venture = JointVenture.new

    @joint_venture.investor_id = params[:investor_id]

    save_status = @joint_venture.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/joint_ventures/new", "/create_joint_venture"
        redirect_to("/joint_ventures")
      else
        redirect_back(:fallback_location => "/", :notice => "Joint venture created successfully.")
      end
    else
      render("joint_ventures/new.html.erb")
    end
  end

  def edit
    @joint_venture = JointVenture.find(params[:id])

    render("joint_ventures/edit.html.erb")
  end

  def update
    @joint_venture = JointVenture.find(params[:id])

    @joint_venture.investor_id = params[:investor_id]

    save_status = @joint_venture.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/joint_ventures/#{@joint_venture.id}/edit", "/update_joint_venture"
        redirect_to("/joint_ventures/#{@joint_venture.id}", :notice => "Joint venture updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Joint venture updated successfully.")
      end
    else
      render("joint_ventures/edit.html.erb")
    end
  end

  def destroy
    @joint_venture = JointVenture.find(params[:id])

    @joint_venture.destroy

    if URI(request.referer).path == "/joint_ventures/#{@joint_venture.id}"
      redirect_to("/", :notice => "Joint venture deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Joint venture deleted.")
    end
  end
end
