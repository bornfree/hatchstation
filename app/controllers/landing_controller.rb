class LandingController < ApplicationController
  def index
    @team = [
      {:name => "Ashwini Patlola", :role => "Rails developer", :twitter => "", :github => "apatlola", :avatar => "585f00bc2f6f284e3ddac74a32fa3847"},
      {:name =>"Ajay Bomma" ,:role => "iOS developer", :twitter => "", :github => "ajaybomma", :avatar => "0512a72595237040bebc75c130b7abea"},
      {:name =>"Ashwin Kumar" ,:role => "Rails developer", :twitter => "", :github => "yashwinkumar", :avatar => "073795ee19151ce9bc1a9e37dcba7ee4"},
      {:name =>"Arun Kolipaka", :role => "iOS developer", :twitter => "", :github => "arunkumariitkgp", :avatar => "2df0d9873c06a754a9919d4f427528f5"},
      {:name =>"Chinna Nalimela" ,:role => "Rails developer", :twitter => "", :github => "nchinnareddy", :avatar => "36b9cf09c787492720ad28e893562379"},
      {:name =>"Harsha Mudumby" , :role => "Rails developer", :twitter => "", :github => "bornfree", :avatar => "0ba61a83d7f9c3f73ff131ab8e8a56a4"},
      {:name =>"Praneeth Patlola" , :role => "Rails developer", :twitter => "", :github => "praneethpatlola", :avatar => "d3b76a3042dc487d75e3a3fbd3cedd55"},
      {:name =>"Prasanna Kumar" ,:role => "Rails developer", :twitter => "", :github => "prasofty", :avatar => "3392aea4a6f1b9da15ba0ddfffe19a3a"},
      {:name =>"Ranjith Nalimela" , :role => "Rails developer", :twitter => "", :github => "ranjithnalimela", :avatar => "299ae0c5c2bf0a44c5178ca4e62f00f1"},
      {:name =>"Suresh Torlapati" , :role => "Rails developer", :twitter => "", :github => "suresh4154", :avatar => "507dbd4250de4c8bf4062061e0be4add"},
      {:name =>"Venkateshwar Rao" , :role => "Rails developer", :twitter => "", :github => "venky-D", :avatar => "bdd5d9b4f7948e32bbffa2fc5fb3e6cf"},
      {:name =>"Venkata Subbaiah" , :role => "Rails developer", :twitter => "", :github => "venkatasubbaiah", :avatar => "bd444f1f5aa2aa87707269d8ee62334f"}
    ]
  end

  def quote
    begin
      Generalmailer.quote(params[:name],params[:email],params[:description]).deliver
      flash[:status] = "Thank you!"
      flash[:message] = "Your details have been received. We will get back to you shortly."
    rescue
      flash[:status] = "Error!"
      flash[:message] = "Something seems to have gone wrong"
    end
    redirect_to :root
    
  end
end
