class UsersController < ApplicationController
	def show 
		@user = User.find(params[:id])	# 現在表示しているユーザーを取得
		@prototypes = @user.prototypes   # ユーザーに関連するプロトタイプのコレクションを取得
	end
end
