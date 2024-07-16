//
//  MovieListViewModel.swift
//  UlSvPl019MoviesUIKit
//
//  Created by joe on 7/17/24.
//

import Foundation
import Combine

class MovieListViewModel: ObservableObject {
    @Published private(set) var movies: [Movie] = []
    private var cancellables: Set<AnyCancellable> = []
    @Published var loadingCompleted: Bool = false
    
    private let httpClient: HTTPClient
    
    init(httpClient: HTTPClient) {
        self.httpClient = httpClient
    }
    
    func loadMovies(search: String) {
        httpClient.fetchMovies(search: search)
            .sink { [weak self] completion in
                switch completion {
                case .finished:
                    self?.loadingCompleted = true
                case .failure(let error):
                    print(error)
                }
            } receiveValue: { [weak self] movies in
                self?.movies = movies
            }
            .store(in: &cancellables)
    }
}
