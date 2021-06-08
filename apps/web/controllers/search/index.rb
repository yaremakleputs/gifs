module Web
  module Controllers
    module Search
      class Index
        include Web::Action
        expose :search_results

        def call(params)
          @search_results = Gif.new.where(params[:query])
        end
      end
    end
  end
end
