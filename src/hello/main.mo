import Debug "mo:base/Debug";
import Nat "mo:base/Nat";
import Int "mo:base/Int";
import Time "mo:base/Time";
import Float "mo:base/Float";
actor Hello {
stable var  currentVal:Float=0;


stable var  startTime=Time.now();


  public func deposit(amount:Float) {
    currentVal+=amount;
  Debug.print(debug_show(currentVal));





  };

  public func withdraW(amount:Float){

    let tempVar:Float =currentVal-amount;
    if(tempVar > 0){ 
      
      currentVal-=amount;
    Debug.print(debug_show(currentVal));
      
      }else {
    Debug.print("The amount is less than you wish to withdraw");
  };


   
   
  } ;

    public query func checkBal() : async Float{
     return currentVal;

 }; 

 public  func calculateintrest(){
  let currentTime=Time.now();
  let timeElapsed=currentTime-startTime;
  let totalSec=timeElapsed / 1000000000;
  currentVal:=currentVal* (1.01 ** Float.fromInt(totalSec));
  startTime:=currentTime;
 };


  }

  

