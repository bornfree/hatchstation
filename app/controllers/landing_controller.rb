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

  def portfolio

    @products = [
      { :name => "Jobhuk", 
        :carousel_name => "jobhuk",
        :tagline => "Disrupting the hiring industry. One social referral at a time.",
        :description => "A crowdsourcing platform for allowing employers to hire by referrals and consumers to become virtual recruiters to refer and get paid.",
        :images => ["jobhuk-web-sreen-1.png","jobhuk-web-sreen-2.png"]},
      { :name => "Airwala",
        :carousel_name => "airwala",
        :tagline => "A simple, no-nonsense approach to booking flights worldwide.",
        :description => "",
        :images => ["airwala-web-screen-1.png","airwala-web-screen-2.png"]},
      { :name => "Airwala (Mobile)",
        :carousel_name => "airwala_mobile", 
        :tagline => "A simple, no-nonsense approach to booking flights worldwide.",
        :description => "",
        :images => ["airwala-mobile-1-2.png","airwala-mobile-3-4.png"]},
      { :name => "Sportybird",
        :carousel_name => "sportybird", 
        :tagline => "",
        :description => "SportyBird enables to manage, track team performance on the field for athletes currently focused towards youth soccer teams. ",
        :images => ["sportybird-web-screen-1.png","sportybird-web-screen-2.png"]},
      { :name => "Sportybird (Mobile)",
        :carousel_name => "sportybird_mobile", 
        :tagline => "",
        :description => "",
        :images => ["sportybird-mobile-1-2.png","sportybird-mobile-3-4.png"]},
      { :name => "PerfectPetMatch",
        :carousel_name => "ppm", 
        :tagline => "",
        :description => "A Pet Matching solution and automation tool for Shelter & Rescuegroups allowing them to manage adoptions, fosters and volunteering of pets seemlessly. ",
        :images => ["petperfect-web-sreen-1.png","petperfect-web-sreen-2.png"]},
      { :name => "Senti",
        :carousel_name => "senti", 
        :tagline => "Sentimental analysis based on user generated data.",
        :description => "",
        :images => ["senti-web-sreen-1.png"]},
      { :name => "Senti (Mobile)",
        :carousel_name => "senti_mobile", 
        :tagline => "Sentimental analysis based on user generated data.",
        :description => "",
        :images => ["senti-mobile-1-2.png","senti-mobile-3-4.png"]},
      { :name => "ezFEED",
        :carousel_name => "ezfeed", 
        :tagline => "",
        :description => "A cloudbased SaaS solution for oil and gas industry client to perform their day to day operations, calculations and execution of their engineering project which involves high cost maintenance and are bound with highest complexity of engineering calculations.",
        :images => ["ezfeed-web-sreen-1.png","ezfeed-web-sreen-2.png"]},
      { :name => "Social Cheers",
        :carousel_name => "social_cheers", 
        :tagline => "",
        :description => "Socialcheers is a online bottle service allowing users to bid and buy bottle service in their city and the best price.",
        :images => ["socialcheers-web-sreen-1.png"]},
      { :name => "iFor.ms",
        :carousel_name => "iforms", 
        :tagline => "",
        :description => "ifor.ms automated the form and patient interaction for doctors. Doctors are enabled with patient management and information services with the most simplest way. Patients never have to fill any offline forms at doctors office any more.",
        :images => ["iforms-web-sreen-1.png","iforms-web-sreen-2.png"]},
      { :name => "Gigumes",
        :carousel_name => "gigumes", 
        :tagline => "",
        :description => "GiGumes is a resume search engine to find or hire talent with a rocket speed. It has millions of open dataset records indexed and you can find the best resumes in here.",
        :images => ["gigumes-web-sreen-1.png","gigumes-web-sreen-2.png"]},
      { :name => "512 Rewards",
        :carousel_name => "512_rewards", 
        :tagline => "Building Consumer loyalty on purchase.",
        :description => "",
        :images => ["512rewards-web-sreen-1.png"]},
      { :name => "Unecloud",
        :carousel_name => "unecloud", 
        :tagline => "",
        :description => "Unecloud a cloud based SaaS solution to the ITSAC process of Texas and other states following similar process. IT aims at reducing the paper work in.
IT contracting, staffing & bidding process with Texas State departments. Currently Unedollar holds officalcontract for Unecloud till 2014 to provide services to 256 Texas State Agencies.",
        :images => ["unecloud-web-screen-1.png"]},
      { :name => "Claimville",
        :carousel_name => "claimville", 
        :tagline => "",
        :description => "ClaimVille helps you and your friend find your missing money or property which you can claim right away.",
        :images => ["claimville-web-sreen-1.png"]},
      { :name => "Whos Flying",
        :carousel_name => "whos_flying", 
        :tagline => "Connecting people on Travel.",
        :description => "
                        Ever missed a friend who travelled to your city?
                        Ever missed a friend in a city where you travelled to?
                        Want to hookup with new people while you travel?

                        Whosflying solves all above.",
        :images => ["whosflying-web-sreen-1.png"]}                
      ]
    render layout: "portfolio"
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
