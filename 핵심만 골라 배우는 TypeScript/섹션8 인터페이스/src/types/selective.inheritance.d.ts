interface Vehicle {
    brand: string;
    year?: number;
}
interface Car extends Vehicle {
    wheels: number;
}
const car1: Car = {
    brand: "Bmw",
    wheels: 4,
};