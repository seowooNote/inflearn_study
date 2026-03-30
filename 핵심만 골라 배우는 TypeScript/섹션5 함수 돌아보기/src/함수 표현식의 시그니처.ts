const printHello: () => void = function printHello(): void {
    console.log("hello");
}

// const add: (n1: number, n2: number) => number = function add(n1, n2) {
//     return n1 + n2;
// }

// const greet: (name: string) => string = (name) => `Hello, ${name}`;
// const greet = (name: string): string => `Hello, ${name}`;


const findLongString = (strings: string[]): string => {
    if(strings.length === 0) return "";

    return strings.reduce((longest, current) => {
        return current.length > longest.length ? current : longest;
    }, strings[0]);
}
