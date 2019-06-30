class ArtistsCommentsController < ApplicationController
  before_action :set_artists_comment, only: [:show, :edit, :update, :destroy]
  before_action :artist_comment_params

  # GET /artists_comments
  # GET /artists_comments.json
  def index
    @artists_comments = ArtistComment.all
  end

  # GET /artists_comments/1
  # GET /artists_comments/1.json
  def show
  end

  # GET /artists_comments/new
  def new
    @artists_comment = ArtistComment.new
  end

  # GET /artists_comments/1/edit
  def edit
  end

  # POST /artists_comments
  # POST /artists_comments.json
  def create
    puts params
    @artist_comment = ArtistComment.new()
    @artist_comment.artist_id = params[:artist_comment][:artist_id]
    puts "ARTIST ID PARAMS #{params[:artist_comment][:artist_id]}"
    @artist_comment.user_id = current_user.id
    puts "CURRENT USER ID #{current_user.id}"
    @artist_comment.content = params[:artist_comment][:content]
    puts "CONTENT PARAMS #{params[:artist_comment][:content]}"
    puts "TRYING TO CREATE ARTIST'S COMMENT"
    respond_to do |format|
      if @artist_comment.save
        puts "WE DID IT"
        format.html { redirect_to artist_url(params[:artist_comment][:artist_id]), notice: 'Artists comment was successfully created.' }
        format.json { render :show, status: :created, location: @artist_comment }
      else
        puts "FAIL MF"
        format.html { render 'artists/index' }
        format.json { render json: @artist_comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /artists_comments/1
  # PATCH/PUT /artists_comments/1.json
  def update
    respond_to do |format|
      if @artists_comment.update(artists_comment_params)
        format.html { redirect_to @artists_comment, notice: 'Artists comment was successfully updated.' }
        format.json { render :show, status: :ok, location: @artists_comment }
      else
        format.html { render :edit }
        format.json { render json: @artists_comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /artists_comments/1
  # DELETE /artists_comments/1.json
  def destroy
    @artists_comment.destroy
    respond_to do |format|
      format.html { redirect_to artists_comments_url, notice: 'Artists comment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_artists_comment
      @artists_comment = ArtistComment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def artist_comment_params
      result = params.require(:artist_comment).permit(:artist_id, :user_id, :content)
      puts "IN THE PARAMS METHOD"
      puts result
      result
    end
end
