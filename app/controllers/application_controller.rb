class ApplicationController < ActionController::Base
  protect_from_forgery
  helper_method :http_referer_uri, :referred_by?


  def http_referer_uri
    request.env["HTTP_REFERER"] && URI.parse(request.env["HTTP_REFERER"])
  end

  def referred_by?
    logger.uri.debug(http_referer_uri)
    uri = http_referer_uri
    host = uri.try(:host)
    logger.uri.debug(host)
    case host
    when "www.allure.com"
      redirect_to allure_path and return
    when "www.elle.com"
      redirect_to elle_path and return
    when "www.yelp.com"
      redirect_to yelp_path and return
    end
  end
end
