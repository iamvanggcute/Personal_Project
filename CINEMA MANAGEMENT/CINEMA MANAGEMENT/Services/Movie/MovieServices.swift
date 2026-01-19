//
//  MovieServices.swift
//  CINEMA MANAGEMENT
//
//  Created by nguyễn văn vang on 19/1/26.
//
struct MovieService {
    func checkMovieStatus(
        movies: [Movie],
        movieId: Int
    ) -> MovieStatus {
        guard let  movies = movies.first(where: {$0.id == movieId}) else {
            return .movieNotFound
        }
        return .movieValid
    }

}
