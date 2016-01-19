 // Bingo 2 in JS

 // sample boards

 var horizontal = [[47, 44, 71, 8, 88],
               ['x', 'x', 'x', 'x', 'x'],
               [83, 85, 97, 89, 57],
               [25, 31, 96, 68, 51],
               [75, 70, 54, 80, 83]];




 var vertical = [[47, 44, 71, 'x', 88],
             [22, 69, 75, 'x', 73],
             [83, 85, 97, 'x', 57],
             [25, 31, 96, 'x', 51],
             [75, 70, 54, 'x', 83]];


var right_to_left = [['x', 44, 71, 8, 88],
                    [22, 'x', 75, 65, 73],
                   [83, 85, 'x', 89, 57],
                    [25, 31, 96, 'x', 51],
                   [75, 70, 54, 80, 'x']];

 // [0][0] = 'x'
 // [1][1] = 'x'
 // [2][2] = 'x'
 // [3][3] = 'x'
 // [4][4] = 'x'

var left_to_right = [[47, 44, 71, 8, 'x'],
                   [22, 69, 75, 'x', 73],
                   [83, 85, 'x', 89, 57],
                   [25, 'x', 96, 68, 51],
                   ['x', 70, 54, 80, 83]];




 // [0][4] = 'x'
 // [1][3] = 'x'
 // [2][2] = 'x'
 // [3][1] = 'x'
 // [4][0] = 'x'

function Board(board) {
  this.board = board;
}

// Runner Function
Board.prototype.checkBoard = function() {
  if(this.checkHorizontal() === true) {
    return "There is a horizontal match!";
  } else if (this.checkVertical() === true) {
    return "There is a vertical match!";
  } else if (this.checkRightToLeft() === true) {
    return "There is a right to left match!";
  } else if (this.checkLeftToRight()) {
    return "There is a left to right match!";
  } else {
    return "There is no Bingo!";
  }
}

Board.prototype.checkHorizontal = function() {
  for (var row = 0; row < 5; row++) {
    console.log("New Row, we're on row " + row);
    var xCount = 0;
    for (var cell = 0; cell < 5; cell++) {
      if (this.board[row][cell] === "x") {
        xCount++;
      } else {
        break;
      }
    }
    if (xCount === 5) return true;
  }
  return false;
}


Board.prototype.checkVertical = function() {
  for (var column = 0; column < 5; column++) {
    console.log("New Row, we're on column " + column);
    var xCount = 0;
    for (var row = 0; row < 5; row++) {
      if (this.board[row][column] === "x") {
        xCount++;
      } else {
        break;
      }
    }
    if (xCount === 5) return true;
    // console.log("End of column " + column);
  }
  return false;
}

Board.prototype.checkRightToLeft = function(){
  for(var i = 0; i < 5; i++){
    if (this.board[i][i] !== 'x'){
      return false;
    }
  }
  return true;
  // var xCounter = 0;
  // for(var i = 0; i < 5; i++){
  //   if (this.board[i][i] === 'x'){
  //     xCounter++;
  //   } else {
  //     break;
  //   }
  // }
  // if (xCounter === 5) return true;
  // return false;
}

Board.prototype.checkLeftToRight = function() {
  for (var x = 0, y = 4; x < 5; x++) {
    if (this.board[x][y] === "x") {
      y--;
    } else {
      return false;
    }
  }
  return true;
}

// Driver tests
var sampleBoard = new Board(left_to_right);
// console.log(sampleBoard);
// console.log(sampleBoard.board);
console.log(sampleBoard.checkBoard());
