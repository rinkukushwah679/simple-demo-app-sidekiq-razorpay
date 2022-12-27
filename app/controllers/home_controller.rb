class HomeController < ApplicationController
  require "faraday"
  require 'net/http'
  require 'uri'


  def index
  end
  def testing



    # url = URI('https://hrms-finance.b91002.dev.us-east-1.aws.svc.builder.cafe/bx_block_login/login/login_otp_confirmation')
    # header = {'Content-Type': 'text/json'}
    # debugger
    # https = Net::HTTP.new(url.host, url.port);
    # https.use_ssl = true
    # request = Net::HTTP::Post.new(url, header)
    # request.body = {"data": {"type": "email_otp", "token": "eyJhbGciOiJIUzUxMiJ9.eyJpZCI6NTUsImV4cCI6MTY2OTE5OTM1NCwidHlwZSI6IkFjY291bnRCbG9jazo6RW1haWxPdHAiLCJhY2NvdW50X2lkIjoxMjF9.Q7qRdu-AsWaI-ozd_-N0cu9o-6l2DttkYLWA1slrCWWp3LCE_bCszN5d2CSU24Zh_Xwy6kg7BRYI_gE-0OmfVw", "otp_code": "8212"}}.to_json
    # res = https.request(request)
    # debugger

    # uri = URI('https://hrms-finance.b91002.dev.us-east-1.aws.svc.builder.cafe/bx_block_login/login/login_otp_confirmation')
    # params = {"data": {"type": "email_otp", "token": "eyJhbGciOiJIUzUxMiJ9.eyJpZCI6NTUsImV4cCI6MTY2OTE5OTM1NCwidHlwZSI6IkFjY291bnRCbG9jazo6RW1haWxPdHAiLCJhY2NvdW50X2lkIjoxMjF9.Q7qRdu-AsWaI-ozd_-N0cu9o-6l2DttkYLWA1slrCWWp3LCE_bCszN5d2CSU24Zh_Xwy6kg7BRYI_gE-0OmfVw", "otp_code": "8212"}}
    # req = Net::HTTP::Post.new(uri.path, {'Content-Type' => 'application/json'})
    # req.body = req
    # res = http.request(req)

    # @response = JSON.parse(res.body)
    # debugger


    
    @resp = Faraday.post do |req|
      req.headers[:Content_Type] = 'application/json'
      req.url 'https://hrms-finance.b91002.dev.us-east-1.aws.svc.builder.cafe/bx_block_login/login/login_otp_confirmation'
      params = {"data": {"type": "email_otp", "token": "eyJhbGciOiJIUzUxMiJ9.eyJpZCI6NTcsImV4cCI6MTY2OTIyMzU1MiwidHlwZSI6IkFjY291bnRCbG9jazo6RW1haWxPdHAiLCJhY2NvdW50X2lkIjoxMjF9.qeFTE5lTAPINO3n4uXw9mWgzvGrnr7ueH6jIFAVdHomSCE56-PM7XawhtqIE5lg7uVJdGvzmrzupjQOOadM3eA", "otp_code": "4784"}}
      req.body = params.to_json
    end
    debugger
    @reponse = JSON.parse(@resp.body).merge("status" => @resp.status)
  end
end
