struct BookingService {
    func validateBooking(
        booking: Booking?
    ) -> BookingStatus {
        booking.map{ $0.seats.isEmpty ? .bookingEmpty : .bookingValid }
        ?? .bookingEmpty 
    }
}
