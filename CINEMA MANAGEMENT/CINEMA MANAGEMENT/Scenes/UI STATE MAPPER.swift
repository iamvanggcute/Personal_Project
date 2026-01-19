//
//  UI STATE MAPPER.swift
//  CINEMA MANAGEMENT
//
//  Created by nguyễn văn vang on 19/1/26.
//

func mapMovieStatusToUiState(_ status: MovieStatus) -> UiState {
    UiState(screen: .movieList, status: "\(status)", message: status.message)
}

func mapBookingStatusToUiState(_ status: BookingStatus) -> UiState {
    UiState(screen: .booking, status: "\(status)", message: status.message)
}

func mapSeatStatusToUiState(_ status: SeatStatus) -> UiState {
    UiState(screen: .seatSelection, status: "\(status)", message: status.message)
}

func mapPaymentStatusToUiState(_ status: PaymentStatus) -> UiState {
    UiState(screen: .payment, status: "\(status)", message: status.message)
}
