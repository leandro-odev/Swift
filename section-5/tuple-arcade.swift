func getStatusCode() -> (code: Int, type: String) {
    return (code: 404, type:"Not found")
}

let status = getStatusCode()
// print(status.0)
// print(status.1)
// print(status.code)
// print(status.type)
// print(status)

let flight = (airport: "JFK", airplane: 747)
print("Flight \(flight.airplane) is leaving from \(flight.airport)")