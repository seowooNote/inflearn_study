function sum(a: number | string, b: number | string): number | string {
    if(typeof a === "number" && typeof b === "number") return a + b;
    if(typeof a === "string" && typeof b === "string") return `${a}${b}`;
    if(typeof a === "number" && typeof b === "string") return String(a) + b;
    if(typeof a === "string" && typeof b === "number") return a + String(b);
    throw new Error("Invalid Parameter Type");
}

console.log(sum(10, 20));
console.log(sum("A", "B"));

function example(a: string | null) {
    return a?.toUpperCase;
}

function returnName(obj: {}) {
    if("name" in obj) return obj.name;
}

// 타입단언
// 타입스크리트 컴파일러보다 개발자가 해당 변수에 할당되어 있는 데이터 타입을 더 정확하게 알고 있는 상황에서 사용
// 타입스크립트 컴파일러에게 타입을 강제로 주입시키는 것이기 때문에 해당 타입이 아님으로써 발생하는 에러는 미리 체크할 수 없다.
const num: unknown = 10.12;
// const fixedNum = <number>num;
const fixedNum = num as number;
console.log(fixedNum.toFixed(1));

// 널 아님 단언연산자 !
function numberFixed(num : number | null) {
    // Truthy
    if(num) {
        console.log(num.toFixed(1));
    }

    // 불일치
    if(num !== null) {
        console.log(num.toFixed(1));
    }

    // 옵셔널 체이닝
    console.log(num?.toFixed(1));

    // 널 아님 단언연산자
    console.log(num!.toFixed(1));
}

numberFixed(10.11);