class PathwaysController < ApplicationController
  def index
    @pathways = Pathway.all

    render("pathways/index.html.erb")
  end

  def show
    @pathway = Pathway.find(params[:id])

    render("pathways/show.html.erb")
  end

  def new
    @pathway = Pathway.new

    render("pathways/new.html.erb")
  end

  def create
    @pathway = Pathway.new


    save_status = @pathway.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/pathways/new", "/create_pathway"
        redirect_to("/pathways")
      else
        redirect_back(:fallback_location => "/", :notice => "Pathway created successfully.")
      end
    else
      render("pathways/new.html.erb")
    end
  end

  def edit
    @pathway = Pathway.find(params[:id])

    render("pathways/edit.html.erb")
  end

  def update
    @pathway = Pathway.find(params[:id])


    save_status = @pathway.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/pathways/#{@pathway.id}/edit", "/update_pathway"
        redirect_to("/pathways/#{@pathway.id}", :notice => "Pathway updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Pathway updated successfully.")
      end
    else
      render("pathways/edit.html.erb")
    end
  end

  def destroy
    @pathway = Pathway.find(params[:id])

    @pathway.destroy

    if URI(request.referer).path == "/pathways/#{@pathway.id}"
      redirect_to("/", :notice => "Pathway deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Pathway deleted.")
    end
  end
end
