// 기본 자료형
let num: number = 10;
let str: string = "Hello";
let bool: boolean = true;
let und: undefined = undefined;
let nul: null = null;
let sym: symbol = Symbol();

// 참조 자료형
// 객체 타입
let obj1: {}= {}; // 빈 객체 - undefined 와 null 을 제외한 모든 값을 허용
// 모든 값이 Object 메서드를 상속 받음

// 지전한 의미의 빈 객체
let emptyObject: Record<string, never> = {};

let obj2: { name: string } = { name: "Jack" }; // 객체에 프로퍼티 추가
let obj3: { name: string; age: number } = { name: "Jack", age: 32 };
let obj4: { name: string; age: number; adult: boolean } = { 
    name: "Jack", 
    age: 32,
    adult: false,
};
let obj5: { name: string; age: number; adult: boolean; job: undefined } = { 
    name: "Jack", 
    age: 32,
    adult: false,
    job: undefined,
};
let obj6: { name: string; age: number; adult: boolean; job: null } = { 
    name: "Jack", 
    age: 32,
    adult: false,
    job: null,
};
let obj7: { name: string; age: number; adult: boolean; job: { title: string; view: number;} } = { 
    name: "Jack", 
    age: 32,
    adult: false,
    job: {
        title: "programmer",
        view: 1000
    },
};
let obj8: { name: string; age: number; adult: boolean; job: { title: string; view: number;}; today: Date } = { 
    name: "Jack", 
    age: 32,
    adult: false,
    job: {
        title: "programmer",
        view: 1000
    },
    today: new Date(),
};

// 함수
// function add(n1: number, n2: number): void {
//     console.log(n1 + n2);
// }

const add: (n1: number, n2: number) => number = function(n1, n2){
    return n1 + n2;
}

const printHello: () => void = () => {
    console.log("hello");
}

// 배열
let list1: [] = [];

let list2: number[] = [1, 2, 3];
let list3: Array<number> = [1, 2, 3];

let list4: string[] = ["a", "b", "c"];
let list5: Array<string> = ["a", "b", "c"];

let list6: boolean[] = [true, false, true];
let list7: Array<boolean> = [true, false, true];

let list8: null[] = [null, null];
let list9: Array<null> = [null, null];

let list10: {name: string }[] = [{ name : "Jack"}, { name : "Jane" }];
let list11: Array<{name: string }> = [{ name : "Jack"}, { name : "Jane" }];

let list12: (() => void)[] = [function () {}, function () {}];
let list13: Array<() => void> = [function () {}, function () {}];

// 다르게 타입이 섞인 배열(튜플) - 제너릭으로 지정불가
let list14: [number, string, boolean] = [1, "a", true];  

// 객체 타입 심화
let deepeningObj1: {
    job: string; 
    getJob: () => string;
} = {
    job : "developer",
    getJob : function() {
        return this.job;
    }
}

let deepeningObj2: {
    job: string; 
    getJob: () => string;
    skills: Array<string>;
} = {
    skills: ["javaScript", "typeScript"],
    job: "developer",
    getJob: function() {
        return this.job;
    }
}

// 옵셔널 속성(기초) - 필수값을 선택적이게 할 수 있다
const printUserName = (lastName: string, firstName?: string) => `${lastName} ${firstName || ""}`;
const result = printUserName("Andrew");
console.log(result);

const user: {name: string; age: number; gender?: string} = {
    name: "John Doe",
    age: 30,
}

user.gender = "female"
console.log(user);