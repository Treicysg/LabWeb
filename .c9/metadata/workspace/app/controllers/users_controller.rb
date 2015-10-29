{"changed":true,"filter":false,"title":"users_controller.rb","tooltip":"/app/controllers/users_controller.rb","value":"class UsersController < ApplicationController\n  before_action :set_user, only: [:show, :edit, :update, :destroy]\n\n  # GET /users\n  # GET /users.json\n  def index\n    @users = User.all\n  end\n\n  # GET /users/1\n  # GET /users/1.json\n  def show\n  end\n\n  # GET /users/new\n  def new\n    @user = User.new\n  end\n  \n\n  # GET /users/1/edit\n  def edit\n  end\n\n  # POST /users\n  # POST /users.json\n  def create\n    @user = User.new(user_params)\n\n    respond_to do |format|\n      if @user.save\n        format.html { redirect_to @user, notice: 'User was successfully created.' }\n        format.json { render :show, status: :created, location: @user }\n      else\n        format.html { render :new }\n        format.json { render json: @user.errors, status: :unprocessable_entity }\n      end\n    end\n  end\n\n  # PATCH/PUT /users/1\n  # PATCH/PUT /users/1.json\n  def update\n    respond_to do |format|\n      if @user.update(user_params)\n        format.html { redirect_to @user, notice: 'User was successfully updated.' }\n        format.json { render :show, status: :ok, location: @user }\n      else\n        format.html { render :edit }\n        format.json { render json: @user.errors, status: :unprocessable_entity }\n      end\n    end\n  end\n\n  # DELETE /users/1\n  # DELETE /users/1.json\n  def destroy\n    @user.destroy\n    respond_to do |format|\n      format.html { redirect_to users_url, notice: 'User was successfully destroyed.' }\n      format.json { head :no_content }\n    end\n  end\n  \n  def login\n\n  end\n\n  private\n    # Use callbacks to share common setup or constraints between actions.\n    def set_user\n      @user = User.find(params[:id])\n    end\n\n    # Never trust parameters from the scary internet, only allow the white list through.\n    def user_params\n      params.require(:user).permit(:username, :password)\n    end\nend\n","undoManager":{"mark":-2,"position":27,"stack":[[{"start":{"row":17,"column":5},"end":{"row":18,"column":0},"action":"insert","lines":["",""],"id":1},{"start":{"row":18,"column":0},"end":{"row":18,"column":2},"action":"insert","lines":["  "]}],[{"start":{"row":18,"column":2},"end":{"row":19,"column":0},"action":"insert","lines":["",""],"id":2},{"start":{"row":19,"column":0},"end":{"row":19,"column":2},"action":"insert","lines":["  "]}],[{"start":{"row":19,"column":0},"end":{"row":19,"column":2},"action":"remove","lines":["  "],"id":3}],[{"start":{"row":18,"column":2},"end":{"row":19,"column":0},"action":"remove","lines":["",""],"id":4}],[{"start":{"row":62,"column":5},"end":{"row":63,"column":0},"action":"insert","lines":["",""],"id":5},{"start":{"row":63,"column":0},"end":{"row":63,"column":2},"action":"insert","lines":["  "]}],[{"start":{"row":63,"column":2},"end":{"row":64,"column":0},"action":"insert","lines":["",""],"id":6},{"start":{"row":64,"column":0},"end":{"row":64,"column":2},"action":"insert","lines":["  "]}],[{"start":{"row":64,"column":2},"end":{"row":64,"column":3},"action":"insert","lines":["d"],"id":7}],[{"start":{"row":64,"column":3},"end":{"row":64,"column":4},"action":"insert","lines":["e"],"id":8}],[{"start":{"row":64,"column":4},"end":{"row":64,"column":5},"action":"insert","lines":["f"],"id":9}],[{"start":{"row":64,"column":5},"end":{"row":64,"column":6},"action":"insert","lines":[" "],"id":10}],[{"start":{"row":64,"column":6},"end":{"row":64,"column":7},"action":"insert","lines":["l"],"id":11}],[{"start":{"row":64,"column":7},"end":{"row":64,"column":8},"action":"insert","lines":["o"],"id":12}],[{"start":{"row":64,"column":8},"end":{"row":64,"column":9},"action":"insert","lines":["g"],"id":13}],[{"start":{"row":64,"column":9},"end":{"row":64,"column":10},"action":"insert","lines":["i"],"id":14}],[{"start":{"row":64,"column":10},"end":{"row":64,"column":11},"action":"insert","lines":["n"],"id":15}],[{"start":{"row":64,"column":11},"end":{"row":65,"column":0},"action":"insert","lines":["",""],"id":16},{"start":{"row":65,"column":0},"end":{"row":65,"column":4},"action":"insert","lines":["    "]}],[{"start":{"row":65,"column":2},"end":{"row":65,"column":4},"action":"remove","lines":["  "],"id":17}],[{"start":{"row":65,"column":2},"end":{"row":65,"column":3},"action":"insert","lines":["e"],"id":18}],[{"start":{"row":65,"column":3},"end":{"row":65,"column":4},"action":"insert","lines":["n"],"id":19}],[{"start":{"row":65,"column":4},"end":{"row":65,"column":5},"action":"insert","lines":["d"],"id":20},{"start":{"row":65,"column":0},"end":{"row":65,"column":2},"action":"remove","lines":["  "]}],[{"start":{"row":65,"column":0},"end":{"row":65,"column":3},"action":"remove","lines":["end"],"id":22},{"start":{"row":65,"column":0},"end":{"row":66,"column":0},"action":"insert","lines":["",""]}],[{"start":{"row":66,"column":0},"end":{"row":66,"column":1},"action":"insert","lines":[" "],"id":23}],[{"start":{"row":66,"column":1},"end":{"row":66,"column":2},"action":"insert","lines":["e"],"id":24}],[{"start":{"row":66,"column":2},"end":{"row":66,"column":3},"action":"insert","lines":["n"],"id":25}],[{"start":{"row":66,"column":3},"end":{"row":66,"column":4},"action":"insert","lines":["d"],"id":26}],[{"start":{"row":66,"column":1},"end":{"row":66,"column":2},"action":"insert","lines":[" "],"id":27}],[{"start":{"row":66,"column":2},"end":{"row":66,"column":3},"action":"insert","lines":[" "],"id":28}],[{"start":{"row":66,"column":2},"end":{"row":66,"column":3},"action":"remove","lines":[" "],"id":29}]]},"ace":{"folds":[],"scrolltop":648,"scrollleft":0,"selection":{"start":{"row":64,"column":11},"end":{"row":64,"column":11},"isBackwards":false},"options":{"guessTabSize":true,"useWrapMode":false,"wrapToView":true},"firstLineState":{"row":7,"state":"start","mode":"ace/mode/ruby"}},"timestamp":1443728561000}