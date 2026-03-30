interface User {
    name: string;
    age: number;
}
interface Log {
    log(message: string): void;
}
interface UserWithLogging extends User, Log {}

const user: UserWithLogging = {
    name: "Jhon",
    age: 20,
    log: (message: string) => console.log(message),
};