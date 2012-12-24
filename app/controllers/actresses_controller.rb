#encoding: utf-8

dummy = "ダミー"

class ActressesController < ApplicationController
  # GET /actresses #ほ

  # GET /actresses.json
  def index
    @actresses = Actress.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @actresses }
    end
  end


  # GET /actresses/1
  # GET /actresses/1.json
  def show
    @actress = Actress.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @actress }
    end
  end


  # GET /actresses/new
  # GET /actresses/new.json
  def new
    @actress = Actress.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @actress }
    end
  end

  # GET /actresses/1/edit
  def edit
    @actress = Actress.find(params[:id])
  end

  # POST /actresses
  # POST /actresses.json
  def create

    @actress = Actress.new( params[:actress] ) 

      def file_save_validate 
        @actress.photo1 = yield(@actress.photo1)
        @actress.photo2 = yield(@actress.photo2)
        @actress.photo3 = yield(@actress.photo3)
      end
      file_save_validate do |photo|
        if photo != nil
          #以下の方法での名前のつけかただとなんか絶対あとでバグでる
          file_name = photo.headers.slice(
             photo.headers.index("[") + 1 .. 
             photo.headers.index("]") - 1 
          )
          if photo.content_type =~ /image\/jpeg/ || photo.content_type =~ /image\/jpg/
            File::open("app/assets/images/actressImage/#{@actress.id.to_s}_#{file_name}.jpg", 'wb') do |of|
              of.write( photo.read )
              of.close
            end
          next "#{@actress.id.to_s}_#{file_name}.jpg"
        else
            #jpeg以外がきたときどうする?
            #暫定的に "none" という文字列をかえす。意味わからんけど。
            #TODO:処理ちゃんときめる
            next "none" 
          end
        end
      next 
      end

      # NOTE:save時にDB上でエラーおこすとRollBackしてエラーが判別
      # しにくいのでlog とか コンソールの出力をよくみよう。
    #TODO:DBに全部 ? で登録されてたから試しにつけてみた
    @actress.profile = @actress.profile.to_s.force_encoding("utf-8")
    respond_to do |format| 
      if @actress.save
        format.html { redirect_to @actress, :notice => 'Actress was successfully created.' }
          format.json { render :json => @actress, :status => :created, :location => @actress }
      else
        format.html { render :action => "new" }
        format.json { render :json => @actress.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /actresses/1
  # PUT /actresses/1.json
  def update
    @actress = Actress.find(params[:id])

    respond_to do |format|
      if @actress.update_attributes(params[:actress])
        format.html { redirect_to @actress, :notice => 'Actress was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @actress.errors, :status => :unprocessable_entity }
      end
    end
  end


  # DELETE /actresses/1
  # DELETE /actresses/1.json
  def destroy
    @actress = Actress.find(params[:id])
    @actress.destroy

    respond_to do |format|
      format.html { redirect_to actresses_url }
      format.json { head :no_content }
    end
  end
end
