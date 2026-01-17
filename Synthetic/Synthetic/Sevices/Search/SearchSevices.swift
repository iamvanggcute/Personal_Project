//
//  SearchSevices.swift
//  Synthetic
//
//  Created by nguyễn văn vang on 17/1/26.
//
struct SearchService {

    func searchOrder(keyword: String?, orders: [Order]) -> SearchOrderStatus {
        guard let key = keyword? .lowercased(), key.isEmpty == false else {
            return .emptyKeyword
        }
        let found = orders.contains { order in
            order.products.contains {
                $0.name.lowercased().contains(key)
            }
        }

        return found ? .found : .notFound
        }
    }
