class TracksController < ApplicationController
  before_action :set_track, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  before_action :track_params, only: [:create, :update]

  # GET /tracks
  # GET /tracks.json
  def index
    @tracks = Track.all
  end

  # GET /tracks/1
  # GET /tracks/1.json
  def show
  end

  # GET /tracks/new
  def new
    @track = Track.new
  end

  # GET /tracks/1/edit
  def edit
  end

  def add_existing_track_to_album
    puts "In ADD EXISTING"
    puts params
    album = Album.find(params[:track][:album_id])
    @track = Track.find(params[:track_id])
    if album.tracks.include?(@track)
      redirect_to @track, notice: "#{@track.title} is already in #{album.title}."
    else
      album.tracks << @track
      redirect_to @track, notice: "#{@track.title} was successfully added to #{album.title}."
    end
  end

  # POST /tracks
  # POST /tracks.json
  def create
    puts "IN TRACK CREATE"
    puts params
    @track = Track.new(track_params)
    album = Album.find(params[:track][:album_id])

    respond_to do |format|
      if @track.save
        album.tracks << @track
        format.html { redirect_to @track, notice: 'Track was successfully created.' }
        format.json { render :show, status: :created, location: @track }
      else
        format.html { render :new }
        format.json { render json: @track.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tracks/1
  # PATCH/PUT /tracks/1.json
  def update
    respond_to do |format|
      if @track.update(track_params)
        format.html { redirect_to @track, notice: 'Track was successfully updated.' }
        format.json { render :show, status: :ok, location: @track }
      else
        format.html { render :edit }
        format.json { render json: @track.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tracks/1
  # DELETE /tracks/1.json
  def destroy
    @track.destroy
    respond_to do |format|
      format.html { redirect_to tracks_url, notice: 'Track was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_track
      @track = Track.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def track_params
      params.require(:track).permit(:title, :length, :artist_id)
    end
end
