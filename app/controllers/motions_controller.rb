class MotionsController < ApplicationController
  def search
    
  end
  
  # GET /motions
  # GET /motions.json
  def index
    @motions = Motion.all
    
    
    ####### FEHLER!!!!!!!!
    ####### FEHLER!!!!!!!!####### FEHLER!!!!!!!!####### FEHLER!!!!!!!!####### FEHLER!!!!!!!!####### FEHLER!!!!!!!!####### FEHLER!!!!!!!!
    
    @tags = Tag.where("motion_id= ?",1)
    

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @motions }
    end
  end

  # GET /motions/1
  # GET /motions/1.json
  def show
    @motion = Motion.find(params[:id])
    
    #Besorgt sich alle passenden Tags zum Antrag
    @tags = Tag.where("motion_id= ?",params[:id])
    
    #Besorgt sich alle passenden Projekte zum Antrag
    @projects = Motion.find(params[:id]).projects

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @motion }
    end
  end

  # GET /motions/new
  # GET /motions/new.json
  def new
    @motion = Motion.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @motion }
    end
  end

  # GET /motions/1/edit
  def edit
    @motion = Motion.find(params[:id])
  end

  # POST /motions
  # POST /motions.json
  def create
    @motion = Motion.new(params[:motion])

    respond_to do |format|
      if @motion.save
        format.html { redirect_to @motion, notice: 'Motion was successfully created.' }
        format.json { render json: @motion, status: :created, location: @motion }
      else
        format.html { render action: "new" }
        format.json { render json: @motion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /motions/1
  # PUT /motions/1.json
  def update
    @motion = Motion.find(params[:id])

    respond_to do |format|
      if @motion.update_attributes(params[:motion])
        format.html { redirect_to @motion, notice: 'Motion was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @motion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /motions/1
  # DELETE /motions/1.json
  def destroy
    @motion = Motion.find(params[:id])
    @motion.destroy
    
    # Löscht zum passenden Antrag auch alle Entscheidungen
    @decisions = Decision.where("motion_id =?",params[:id])
    @decisions.each do |decision|
      decision.destroy
    end
    
    #Löscht zum passenden Antrag auch alle zugehörigen Tags
    @tags = Tag.where("motion_id =?",params[:id])
    @tags.each do |tag|
      tag.destroy
    end

    respond_to do |format|
      format.html { redirect_to motions_url }
      format.json { head :no_content }
    end
  end
  
  def search
  end
  
  def searchresult
    # Funktion ermöglicht das Suchen nach Anträgen
  end
  
  def showonemotion
    @motion = Motion.find(1)
  end
end
