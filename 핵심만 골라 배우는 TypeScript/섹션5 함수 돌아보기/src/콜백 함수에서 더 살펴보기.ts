// function fetchData(callback: (data: string) => void) {
//     callback("some data");
// }

// fetchData((data) => {
//     console.log(data);
// })

function processData(data: string, callback: (result: string) => void) {
    const result = data.toUpperCase();
    callback(result);
}

processData("hello", (result) => {
    console.log(result)
})

function fetchData(callback: (error: null | Error, data: string | null) => void) {
    setTimeout(() => {
        // 에러가 없는 경우
        callback(null, "Data Fetched Successfully");

        // 에러가 있는 경우
        // callback(new Error("Data Fetched Failed"), null);
    }, 1000);
}

fetchData((error, data): void => {
    if(error) {
        console.error(error);
    }else {
        console.log(data);
    } 
})