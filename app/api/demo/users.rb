module Demo
  class Users < Grape::API
    resource :users do
      get rabl: 'users/index' do
        @users = User.all
      end

      route_param :id do
        get rabl: 'users/show' do
          @user = User.find(params[:id])
        end
      end
    end
  end
end
