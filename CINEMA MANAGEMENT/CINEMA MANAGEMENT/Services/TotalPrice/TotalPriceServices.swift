//
//  TotalPriceServices.swift
//  CINEMA MANAGEMENT
//
//  Created by nguyễn văn vang on 19/1/26.
//
struct TotalPriceService {
    func calculateTotalPrices(
        seats: [Seat],
        onResult: (TotalPriceStatus, Double?) -> Void
    ) {
        let KtrGia = seats.contains{$0.price < 0}
        if KtrGia { onResult (.priceInvalid, nil)}
        let total = seats.map{$0.price}.reduce(0){$0 + $1}
        onResult (.priceOK , total)
    }
}
