type Email = string;
type Password = string;

let e: Email = "jhon@gamil.com";
let p: Password = "1234@";

// interface Person {
//     name: string;
//     age: number;
//     gender: "male" | "female";
// }
type Person = {
    readonly name: string;
    age: number;
    gender?: "male" | "female";
}

let person1: Person = {
    name: "Jhon",
    age: 30,
    // gender: "male"
};

// interface Add {
//     (n1: number, n2: number): number;
// }

type Add = {
    (n1: number, n2: number) : number;
}

const add: Add = (n1, n2) => n1 + n2;

// interface User {
//     [key: string]: string;
// }

type User = {
    [key: string]: string;
}

let person: User = {
    name: "Jhon",
    gender: "male",
    address: "Seoul",
};

// 타입별칭의 병합과 상속(인터페이스와 동일 X)
// type Animal = {
//     name: string;
//     age: number;
// }

// type Dog = Animal & {
//     gender: string;
// }

// const pet: Dog = {
//     name: "Mink",
//     age: 10,
//     gender: "female"
// }

// 타입별칭과 인터페이스의 상호작용
type Sound = "bark" | "meow" | "chirp";

interface Animal {
    name: string;
    age: number;
}

interface Pet extends Animal {
    sound: Sound;
}

interface WildAnimal extends Animal {
    sound: Sound;
    dangerLevel: number;
}

function processAnimalSound(sound: Sound) {
    // ...
}

const dog: Pet = {
    name: "Buddy",
    age: 5,
    sound: "bark",
};

type MathOperation = (a: number, b: number) => number;

interface Calculator {
    add: MathOperation;
    substract: MathOperation;
}

const calculator: Calculator = {
    add: (a, b) => a + b,
    substract: (a, b) => a - b,
};

console.log(calculator.add(5, 3)); // 8
console.log(calculator.substract(5, 3)); // 2

interface Dog {
    breed: string;
    bark(): void;
}

interface Cat {
    breed: string;
    meow(): void;
}

type Pets = Dog | Cat;

interface BasicAddress {
    street: string;
    city: string;
}

type FullAddress = BasicAddress & {
    country: string;
    zipCode: string;
};

const myAddress: FullAddress = {
    street: "ganamgu",
    city: "seoul",
    country: "Korea",
    zipCode: "132232",
};