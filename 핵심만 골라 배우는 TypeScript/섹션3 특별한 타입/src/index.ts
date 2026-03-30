// unknown
let a: unknown = "Hello";
let b: unknown = "World!";
let c = typeof a === 'string' && typeof b === 'string' ? a + b : "문자열이 아니다."; // unknown -> 타입을 좁혀준다. any 사용 X
console.log(c);

// never
let d: never;

function throwError(err: string): never {
    throw new Error(err);
}

function infiniteLoop(): never {
    while(true) {}
}

// Union Type
let e: number | string | boolean = 10;
e = "A";
e = true;
console.log(e);

// Intersection Type
let f: { name: string } & { age: number } & { gender?: string };
f = {
    name: "A",
    age: 10,
    // gender: "female",
};