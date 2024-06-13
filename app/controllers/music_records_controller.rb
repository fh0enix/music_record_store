class MusicRecordsController < ApplicationController
  before_action :set_music_record, only: [:show, :edit, :update, :destroy]

  def index
    @music_records = MusicRecord.all
  end

  def show
  end

  def new
    @music_record = MusicRecord.new
  end

  def edit
  end

  def create
    @music_record = MusicRecord.new(music_record_params)
    if @music_record.save
      redirect_to @music_record, notice: 'Music record was successfully created.'
    else
      render :new
    end
  end

  def update
    if @music_record.update(music_record_params)
      redirect_to @music_record, notice: 'Music record was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @music_record.destroy
    redirect_to music_records_url, notice: 'Music record was successfully destroyed.'
  end

  private

  def set_music_record
    @music_record = MusicRecord.find(params[:id])
  end

  def music_record_params
    params.require(:music_record).permit(:title, :description, :price, :damage_assessment, :photo)
  end
end
