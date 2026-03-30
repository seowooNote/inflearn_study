// function fetchData(callback: (data : string) => void) {
//     callback("some data");
// }

// fetchData((data : string): void => {
//     console.log(data);
// })


// function processData(data: string, callback: (result: string) => void) {
//     const result = data.toUpperCase();
//     callback(result); 
// }

// processData("hello", (result: string): void => {
//     console.log(result);
// })


function doubleNum(item: number): void {
    console.log(item * 2);
}

function powNum(item: number): void {
    console.log(item * item);
}

function processItem(items: number[], callback: (item: number) => void) {
    items.forEach((item) => {
        callback(item);
    })
}

processItem([1, 2, 3], doubleNum);
processItem([1, 2, 3], powNum);


// function fetchData(callback: (error: null | Error, data: string | null) => void) {
//     setTimeout(() => {
//         // 에러가 없는 경우
//         callback(null, "Data Fetched Successfully");

//         // 에러가 있는 경우
//         // callback(new Error("Data Fetched Failed"), null);
//     }, 1000);
// }

// fetchData((error: null | Error, data: string | null) => {
//     if(error) {
//         console.error(error);
//     }else {
//         console.log(data);
//     } 
// })