class FriendshipsController < ApplicationController
    def create
        @friendship = Friendship.create(friendshipParams)
        render json: @friendship
    end

    def destroy
        @friendship = Friendship.find(params:[id])
        @friendship.destroy
    end

    private

    def friendshipParams
        params.permit(:user_id, :friend_id)
    end


end
