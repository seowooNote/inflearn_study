import { User } from "./types/user";

// const user1: User = {
//     uname: "철수",
//     age: 20,
//     gender: "male",
// };

// user1.uname = "영희";
// user1.age = 30;
// user1.gender = "female"; // readyonly 로 값 변경 불가

// const user2: User = {
//     uname: "영희",
//     age: 30,
//     gender: "female",
// };

// const user3: User = {
//     uname: "가희",
//     age: 25,
//     gender: "female",
// };


// const add = (n1: number, n2: number): number => {
    //     return n1 + n2;
    // }
    
interface Add {
    (n1: number, n2: number): number;
}

const add: Add = (n1, n2) => {
    return n1 + n2;
}

interface Greet {
    (name: string): string;
}

const greet: Greet = (name) => {
    return `Hello, ${name}`;
}

const user1: User = {
    name: "철수",
    gender: "male",
    address: "seoul",
    age: 10,
};


