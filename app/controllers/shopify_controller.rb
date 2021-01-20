class ShopifyController < ApplicationController
  def execute
    body = JSON.parse(request.body.read)
    OrderCreated.create(total_price: body["total_price"])
    pp "This is a comment: #{body["total_price"]}"
    render status: 200, json: {test: "ikenna"}
  end
end