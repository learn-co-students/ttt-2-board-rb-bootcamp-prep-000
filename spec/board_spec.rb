//Play Button
onEvent("play", "click", function(){
  setScreen("MainGame");
  
});

//Main Game 

//Declarations
var p1Score = 0;
var p2Score = 0;
var turn = 0;


//main
resetBoard();

//Supplementary functions
function resetScore(){
  p1Score = 0;
  p2Score = 0;
  setText("score1",p1Score);
  setText("score2",p2Score);
  setText("roundWinner", "");

}

function resetBoard(){
  setText("b1","");
  setText("b2","");
  setText("b3","");
  setText("b4","");
  setText("b5","");
  setText("b6","");
  setText("b7","");
  setText("b8","");
  setText("b9","");
  turn = 0;
  setText("roundWinner", "");
}



function isPlayed(text){
  if(text==""){
    console.log("not played");
    return true;
  }
  else{
    console.log("played");
    return false;
  }
}

function threeInARow(){
  var result = false;
  if(getText("b1")==getText("b2")&&getText("b2")==getText("b3")&&getText("b1")!==""){
    result = true;
  }
  else if(getText("b4")==getText("b5")&&getText("b5")==getText("b6")&&getText("b4")!==""){
    result = true;
  }
  else if(getText("b7")==getText("b8")&&getText("b8")==getText("b9")&&getText("b7")!==""){
    result = true;
  }
  else if(getText("b1")==getText("b4")&&getText("b4")==getText("b7")&&getText("b1")!==""){
    result = true;
  }
  else if(getText("b2")==getText("b5")&&getText("b5")==getText("b8")&&getText("b2")!==""){
    result = true;
  }
  else if(getText("b3")==getText("b6")&&getText("b6")==getText("b9")&&getText("b3")!==""){
    result = true;
  }
  else if(getText("b1")==getText("b5")&&getText("b5")==getText("b9")&&getText("b1")!==""){
    result = true;
  }
  else if(getText("b3")==getText("b5")&&getText("b5")==getText("b7")&&getText("b3")!==""){
    result = true;
  }
  return result;
}

function game(){
  if(threeInARow()){
    console.log("win");
    if(turn%2==1){
      p1Score++;
      setText("score1",p1Score);
      setText("roundWinner", "Player 1 wins");
    }
    else{
      p2Score++;
      setText("score2",p2Score);
      setText("roundWinner", "Player 2 wins");
    }
  }
  else if(turn==9){
    console.log("tie");
  }
 
  win();


}



//On event functions
onEvent("b1", "click", function(event) {
  if(isPlayed(getText("b1"))&&!threeInARow()){
    if(turn%2==1){
      setText("b1","X");
      turn++;
    }else{
      setText("b1","O");
      turn++;
    }
    game();
   
  }

  console.log("b1 clicked!");
});

onEvent("b2", "click", function(event) {
  if(isPlayed(getText("b2"))&&!threeInARow()){
    if(turn%2==1){
      setText("b2","X");
      turn++;
    }else{
      setText("b2","O");
      turn++;
    }
    game();
  }

  console.log("b2 clicked!");
});

onEvent("b3", "click", function(event) {
  if(isPlayed(getText("b3"))&&!threeInARow()){
    if(turn%2==1){
      setText("b3","X");
      turn++;
    }else{
      setText("b3","O");
      turn++;
    }
    game();
  }

  console.log("b3 clicked!");
});

onEvent("b4", "click", function(event) {
  if(isPlayed(getText("b4"))&&!threeInARow()){
    if(turn%2==1){
      setText("b4","X");
      turn++;
    }else{
      setText("b4","O");
      turn++;
    }
    game();
  }

  console.log("b4 clicked!");
});

onEvent("b5", "click", function(event) {
  if(isPlayed(getText("b5"))&&!threeInARow()){
    if(turn%2==1){
      setText("b5","X");
      turn++;
    }else{
      setText("b5","O");
      turn++;
    }
    game();
  }

  console.log("b5 clicked!");
});

onEvent("b6", "click", function(event) {
  if(isPlayed(getText("b6"))&&!threeInARow()){
    if(turn%2==1){
      setText("b6","X");
      turn++;
    }else{
      setText("b6","O");
      turn++;
    }
    game();
  }

  console.log("b6 clicked!");
});

onEvent("b7", "click", function(event) {
  if(isPlayed(getText("b7"))&&!threeInARow()){
    if(turn%2==1){
      setText("b7","X");
      turn++;
    }else{
      setText("b7","O");
      turn++;
    }
    game();
  }

  console.log("b7 clicked!");
});

onEvent("b8", "click", function(event) {
  if(isPlayed(getText("b8"))&&!threeInARow()){
    if(turn%2==1){
      setText("b8","X");
      turn++;
    }else{
      setText("b8","O");
      turn++;
    }
    game();
  }

  console.log("b8 clicked!");
});

onEvent("b9", "click", function(event) {
  if(isPlayed(getText("b9"))&&!threeInARow()){
    if(turn%2==1){
      setText("b9","X");
      turn++;
    }else{
      setText("b9","O");
      turn++;
    }
    game();
  }

  console.log("b9 clicked!");
});

onEvent("resetB", "click", function() {
  resetBoard();
  console.log("resetB clicked!");
});
onEvent("resetS", "click", function() {
  resetBoard();
  resetScore();
  console.log("resetS clicked!");
});

function win(){
if(p1Score == 3){
  setScreen("Winner");
  setText("winnerLabel", "Player 1");
}
else if(p2Score == 3){
  setScreen("Winner");
  setText("winnerLabel", "Player 2");
}
  }


//Play Again 
onEvent("replay", "click", function(){
  setScreen("MainGame");
});



