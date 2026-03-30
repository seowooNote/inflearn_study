function greet(name: string): string;
function greet(name: string, age?: number): string;
function greet(name: string, age?: number): string {
    if(age !== undefined) {
        return `Hello ${name}. You are ${age} years old.`;
    }else {
        return `Hello ${name}.`;
    }
}

console.log(greet("Alice"));
console.log(greet("Bob", 30));
