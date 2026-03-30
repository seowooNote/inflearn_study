interface Person {
    name: string;
    age: number;
}
// 인터페이스 상속
interface Developer extends Person { // 부모 인터페이스와 중복되는 속성을 제거
    // name: string;
    // age: number;
    skill: string;
}
const person: Person = {
    name: "Jhon",
    age: 20,
}
const developer: Developer = {
    name: "Sucoding",
    age: 30,
    skill: "Front Developer",
};
