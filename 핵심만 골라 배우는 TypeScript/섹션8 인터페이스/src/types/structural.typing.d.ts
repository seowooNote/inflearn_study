interface User {
    name: string;
    age: number;
}
interface Person {
    name: string;
    readonly age: number;
}
let user: User = {
    name: "철수",
    age: 20,
}
let person: Person = {
    name: "영희",
    age: 30,
}

// User interface, Person interface 식별자는 다르지만 객체의 형태는 같음
// 타입스크립트는 객체의 타입 검사 객체 형태 기반하여 검사하는 구조적 타이핑에 의거하여 타입이 일치하다고 판단
// readonly 는 구조적 타이핑 잘 적용됨
user = person;
person = user;

// 객체의 형태만 일치하면 지정된 타입의 출처가 달라도 타입체크가 통과됨
function greet(person: User) {
    console.log(`Hello, ${person.name}`);
}
const user1 = { name: "Alice", age: 25 };
greet(user1);