class ShopifyController < ApplicationController
  def execute
    body = JSON.parse(request.body.read)

    order_created = OrderCreated.new(id: body["id"])


    render status: 200
  end
end