class JointVentureRequestsController < ApplicationController
  def index
    @joint_venture_requests = JointVentureRequest.all

    render("joint_venture_requests/index.html.erb")
  end

  def show
    @joint_venture_request = JointVentureRequest.find(params[:id])

    render("joint_venture_requests/show.html.erb")
  end

  def new
    @joint_venture_request = JointVentureRequest.new

    render("joint_venture_requests/new.html.erb")
  end

  def create
    @joint_venture_request = JointVentureRequest.new

    @joint_venture_request.sender_id = params[:sender_id]
    @joint_venture_request.receiver_id = params[:receiver_id]

    save_status = @joint_venture_request.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/joint_venture_requests/new", "/create_joint_venture_request"
        redirect_to("/joint_venture_requests")
      else
        redirect_back(:fallback_location => "/", :notice => "Joint venture request created successfully.")
      end
    else
      render("joint_venture_requests/new.html.erb")
    end
  end

  def edit
    @joint_venture_request = JointVentureRequest.find(params[:id])

    render("joint_venture_requests/edit.html.erb")
  end

  def update
    @joint_venture_request = JointVentureRequest.find(params[:id])

    @joint_venture_request.sender_id = params[:sender_id]
    @joint_venture_request.receiver_id = params[:receiver_id]

    save_status = @joint_venture_request.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/joint_venture_requests/#{@joint_venture_request.id}/edit", "/update_joint_venture_request"
        redirect_to("/joint_venture_requests/#{@joint_venture_request.id}", :notice => "Joint venture request updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Joint venture request updated successfully.")
      end
    else
      render("joint_venture_requests/edit.html.erb")
    end
  end

  def destroy
    @joint_venture_request = JointVentureRequest.find(params[:id])

    @joint_venture_request.destroy

    if URI(request.referer).path == "/joint_venture_requests/#{@joint_venture_request.id}"
      redirect_to("/", :notice => "Joint venture request deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Joint venture request deleted.")
    end
  end
end
