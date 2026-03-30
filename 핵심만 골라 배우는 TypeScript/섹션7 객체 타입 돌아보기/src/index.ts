let user1: { name: string; age: number; getName?: () => string } = {
    name : "철수",
    age: 10,
    getName() {
        return this.name;
    }
}


function greet1(user: {
    name: string;
    age?: number; // 옵셔널 속성
}): void {
    console.log(`Hello, ${user.name}`);
    console.log(`You are ${user.age} years old`);
}

greet1({
    name: "철수",
});


// 객체 타입의 지정할 때 수정 불가능한 속성을 만들고 싶으면 readonly
let user2: {
    name: string;
    readonly age: number;
} = {
    name: "철수",
    age: 20,
};

user2.name = "영희";
// user2.age = 30;


// 객체 타입으로 함수 시그니처 저장하기(함수도 객체로 취급됨)
const add: { (n1: number, n2: number): number  } = function add(n1, n2) {
    return n1 + n2;
}
console.log(add(10, 20));


const greet2: { (name: string): string } = (name) => `Hello, ${name}`;
console.log(greet2);

// 인덱스 시그니처(객체 타입을 동적으로 정할 수 있음)
// 객체 타입 지정에 자유도를 높여주지만, 이로 인해 타입 안정성이 떨어 질 수 있음
let user3: {
    [key: string]: string | number | (() => string);
} = {
    name: "철수",
    gender: "male",
    address: "seoul",
    age: 20,
    printHello() {
        return "Hello";
    },
}

interface Person{
    name: string;
    printName: () => string;
    [key: string]: string | (() => string);
}

const person: Person = {
    name: "Jhon",
    printName() {
        return this.name; // 타입스크립트 관점에서 문자열일 수도 있고 함수일 수도 있음
    },
}

person.printName();