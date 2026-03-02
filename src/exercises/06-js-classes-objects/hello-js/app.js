console.log("Hello World");

const sum = function (inputNumberA, inputNumberB = 1) {
    return inputNumberA + inputNumberB;
};


console.log( sum(1) );


// function greeting(){
//     console.log("Hi");
// }


// setTimeout(() => {
//     console.log("Hi");
// }, 3000);





// const timesTwo = (inputNumber) => inputNumber * 2;


// function timesTwo(inputNumber){
//     return inputNumber * 2;
// }


// console.log(myName);

// let myName = "Mohammed";




let myArr = [5, 7, 3];

let car = {
    make: "BMW",
    model: "3 Series",
    colour: "green",
    year: 1990,
    extras: ["Keyless", "HUD"]
};



let user = {
    firstName: "John",
    lastName: "Jones",
    age: 32,
    hobbies: ["Gym", "Movies"],
    friends: [
        {
            firstName: "Tim",
            lastName: "Murphy",
            age: 25,
        },
        {
            firstName: "Jake",
            lastName: "Walsh",
            age: 28,
        }
    ],
    
};

let myName = "Mo";




let donuts = ["Chocolate", "Jam", "Custard"];


donuts.forEach((donut, i) => {
    // console.log(i + 1 + " " + donut);
    console.log( `Option ${i+1}: ${donut}` );
});