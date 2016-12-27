class PeopleController < ApplicationController
  before_action :set_person, only: [:show, :edit, :update, :destroy]

  # GET /people
  # GET /people.json
  def index
    @people = Person.all
  end

  # GET /people/1
  # GET /people/1.json
  def show
  end

  # GET /people/new
  def new
    @person = Person.new
  end

  # GET /people/1/edit
  def edit
  end

  # POST /people
  # POST /people.json
  def create
    @person = Person.new(person_params)
    @person.birthday = Date.strptime(person_params['birthday'],'%d.%m.%Y');
    respond_to do |format|
      if @person.save
        format.html { redirect_to @person, notice: 'Физ. лицо зарегистрировано.' }
        format.json { render :show, status: :created, location: @person }
      else
        format.html { render :new }
        format.json { render json: @person.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /people/1
  # PATCH/PUT /people/1.json
  def update
    respond_to do |format|
      if @person.update(person_params)
        format.html { redirect_to @person, notice: 'Физ. лицо измено успешно.' }
        format.json { render :show, status: :ok, location: @person }
      else
        format.html { render :edit }
        format.json { render json: @person.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /people/1
  # DELETE /people/1.json
  def destroy
    @person.destroy
    respond_to do |format|
      format.html { redirect_to people_url, notice: 'Физ. лицо удалено.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_person
      @person = Person.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def person_params
      params[:person].permit(:fname, :sname, :tname, :birthday, :sex, :fprevname, :sprevname, :tprevname, :passserie, :passnumber, :passsource, :passdivision, :snils. :extpassexists. :regaddrindex, :regaddrregion, :regaddrarea, :regaddrcity, :regaddrstreet, :regaddrhouse, :regaddrhousekorp, :regaddrhousestr, :regaddrhouseflat, :registration_type, :addrtempregdate, :sameliveaddress, :liveaddrindex, :liveaddrregion, :liveaddrarea, :liveaddrcity, :liveaddrstreet, :liveaddrhouse, :liveaddrhousekorp, :liveaddrhousestr, :liveaddrhouseflat, :livebaseowner, :livebaserelative, :livebasesocial, :livebaserent, :livebaseother, :phonemobile, :email, :married, :simplemarried, :single, :divorced, :widower, :marriagecontract, :childcount, :ed1, :ed2, :ed3, :ed4, :ed5, :ed6, :childyear1, :childyear2, :childyear3)
    end
end

