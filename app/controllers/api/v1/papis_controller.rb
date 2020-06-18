class Api::V1::PapisController < ApiController
    before_action :set_post, only: [:show]
    
    # 拾えなかったExceptionが発生したら500 Internal server errorを応答する
    rescue_from Exception, with: :render_status_500

    # ActiveRecordのレコードが見つからなければ404 not foundを応答する
    rescue_from ActiveRecord::RecordNotFound, with: :render_status_404
   
  
    def index
      posts = Post.all
      render json: posts
    end
  
    def show
      render json: @post
    end
  
    def create
      post = Post.new(post_params)
      if post.save
        render json: post, status: :created
      else
        render json: { errors: post.errors.full_messages }, status: :unprocessable_entity
      end
    end

    private
  
      def set_post
        @post = Post.find(params[:id])
      end
      def post_params
        params.fetch(:papi, {}).permit(:title, :content)
      end

      def render_status_404(exception)
        render json: { errors: [exception] }, status: 404
      end
      def render_status_500(exception)
        render json: { errors: [exception] }, status: 500
      end
end