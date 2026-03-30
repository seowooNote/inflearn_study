// export interface User {
//     uname: string;
//     age: number;
//     readonly gender?: "male" | "female";
// }

export interface User {
    [key: string]: string | number;
}

// 인터페이스 병합
interface User1 {
    name: string;
}

interface User2 {
    age: number;
}

let user: User1 = {
    name : "철수",
    age : 20,
};