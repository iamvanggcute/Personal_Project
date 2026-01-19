struct SeatService {

    func validateSeats(seats: [Seat]) -> SeatStatus {
        let hasUnavailableSeat = seats.contains { !$0.isAvailable }
        return hasUnavailableSeat ? .seatUnavailable : .seatValid
    }

    func calculateTotalPrice(
        seats: [Seat],
        onResult: (TotalPriceStatus, Double?) -> Void
    ) {
        // 1. Kiểm tra giá ghế
        let hasInvalidPrice = seats.contains { $0.price <= 0 }
        if hasInvalidPrice {
            onResult(.priceInvalid, nil)
            return
        }

        // 2. Tính tổng tiền
        let total = seats
            .map { $0.price }
            .reduce(0, +)

        onResult(.priceOK, total)
    }
}

