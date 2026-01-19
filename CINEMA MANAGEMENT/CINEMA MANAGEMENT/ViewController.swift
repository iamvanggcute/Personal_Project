import UIKit

class ViewController: UIViewController {
    
    let movieService = MovieService()
    let bookingService = BookingService()
    let seatService = SeatService()
    let paymentService = PaymentService()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        demo()
    }
    
    func demo() {
        
        
        
        print("===== DEMO START =====")
        
        // 1️⃣ DATA
        let movies = [
            Movie(id: 1, title: "Avengers", duration: 120)
        ]
        
        let seatA = Seat(number: "A1", price: 100_000, isAvailable: true)
        let seatB = Seat(number: "A2", price: 100_000, isAvailable: true)
        let seatUnavailable = Seat(number: "B1", price: 100_000, isAvailable: false)
        let seatInvalidPrice = Seat(number: "C1", price: -50, isAvailable: true)
        let seatExpensive = Seat(number: "VIP", price: 600_000, isAvailable: true)
        
        let validBooking = Booking(id: 1, movieId: 1, seats: [seatA, seatB])
        let emptyBooking = Booking(id: 2, movieId: 1, seats: [])
        let unavailableSeatBooking = Booking(id: 3, movieId: 1, seats: [seatUnavailable])
        let invalidPriceBooking = Booking(id: 4, movieId: 1, seats: [seatInvalidPrice])
        let expensiveBooking = Booking(id: 5, movieId: 1, seats: [seatExpensive])
        
        // =============================
        // FLOW 1: SUCCESS
        // =============================
        print("\n--- FLOW 1: SUCCESS ---")
        print(movieService.checkMovieStatus(movies: movies, movieId: 1).message)
        print(bookingService.validateBooking(booking: validBooking).message)
        print(seatService.validateSeats(seats: validBooking.seats).message)
        
        seatService.calculateTotalPrice(seats: validBooking.seats) { status, total in
            print(status.message)
            if let total = total {
                print("Total:", total)
                print(paymentService.payment(totalPrice: total).message)
            }
        }
        
        // =============================
        // FLOW 2: BOOKING EMPTY
        // =============================
        print("\n--- FLOW 2: BOOKING EMPTY ---")
        print(bookingService.validateBooking(booking: emptyBooking).message)
        
        // =============================
        // FLOW 3: SEAT UNAVAILABLE
        // =============================
        print("\n--- FLOW 3: SEAT UNAVAILABLE ---")
        print(seatService.validateSeats(seats: unavailableSeatBooking.seats).message)
        
        // =============================
        // FLOW 4: INVALID PRICE
        // =============================
        print("\n--- FLOW 4: INVALID PRICE ---")
        seatService.calculateTotalPrice(seats: invalidPriceBooking.seats) { status, _ in
            print(status.message)
        }
        
        // =============================
        // FLOW 5: PAYMENT FAILED
        // =============================
        print("\n--- FLOW 5: PAYMENT FAILED ---")
        seatService.calculateTotalPrice(seats: expensiveBooking.seats) { status, total in
            print(status.message)
            if let total = total {
                print("Total:", total)
                print(paymentService.payment(totalPrice: total).message)
            }
        }
        
        print("\n===== DEMO END =====")
    }
}

