interface Car {
    name: string;
    color: string;
}
interface Bmw extends Car {
    speed: number;
}
const car: Car = {
    name: "car",
    color: "red",
};
const bmw: Bmw = {
    name: "bmw",
    color: "blue",
    speed: 100,
};


