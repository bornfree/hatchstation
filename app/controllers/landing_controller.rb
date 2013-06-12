class LandingController < ApplicationController
  def index
    @team = [
      {:name => "Ashwini Patlola", :role => "Rails developer", :twitter => "", :github => ""},
      {:name =>"Ajay Bomma" ,:role => "iOS developer", :twitter => "", :github => ""},
      {:name =>"Ashwin Kumar" ,:role => "Rails developer", :twitter => "", :github => ""},
      {:name =>"Arun Kolipaka", :role => "iOS developer", :twitter => "", :github => ""},
      {:name =>"Chinna Nalimela" ,:role => "Rails developer", :twitter => "", :github => ""},
      {:name =>"Harsha Mudumby" , :role => "Rails developer", :twitter => "", :github => ""},
      {:name =>"Praneeth Patlola" , :role => "Rails developer", :twitter => "", :github => ""},
      {:name =>"Prasanna Kumar" ,:role => "Rails developer", :twitter => "", :github => ""},
      {:name =>"Ranjith Nalimela" , :role => "Rails developer", :twitter => "", :github => ""},
      {:name =>"Suresh Torlapati" , :role => "Rails developer", :twitter => "", :github => ""},
      {:name =>"Venkateshwar Rao" , :role => "Rails developer", :twitter => "", :github => ""},
      {:name =>"Venkata Subbaiah" , :role => "Rails developer", :twitter => "", :github => ""}
    ]
  end
end
