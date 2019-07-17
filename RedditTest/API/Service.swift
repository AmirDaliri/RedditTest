//
//  Service.swift
//  RedditTest
//
//  Created by Amir Daliri on 17.07.2019.
//  Copyright © 2019 AmirDaliri. All rights reserved.
//

import Foundation
import Alamofire

extension ApiRouter {
    
    enum ServiceEndPoint: String {
        case getMainData = "/r/swift/.json"
    }
    
    enum Service: URLRequestConvertible {
        
        case getMainData
        
        var method: Alamofire.HTTPMethod {
            switch self {
                
            case .getMainData:
                return .get
            }
        }
        
        func asURLRequest() throws -> URLRequest {
            let result: (path: String, parameters: [String: AnyObject]?) = {
                switch self {
                    
                case .getMainData:
                    return (ServiceEndPoint.getMainData.rawValue, nil)
                    
                }
            }()
            
            // MARK: - Set HTTP Header Field
            let base = URL(string: "https://www.reddit.com")!
            let baseAppend = base.appendingPathComponent(result.path).absoluteString.removingPercentEncoding
            let url = URL(string: baseAppend!)
            var urlRequest = URLRequest(url: url!)
            urlRequest.httpMethod = method.rawValue
            /*
            urlRequest.setValue("application/json", forHTTPHeaderField: "Content-type")
            if let sessionId = AuthCache.sessionId {
                urlRequest.setValue(sessionId, forHTTPHeaderField: "SessionId")
            }
            */
            switch result.path {
            case ServiceEndPoint.getMainData.rawValue:
                
                let encoding = try URLEncoding.default.encode(urlRequest, with: result.parameters)
                return encoding
            default:
                let encoding = try JSONEncoding.default.encode(urlRequest, with: result.parameters)
                return encoding
            }
        }
    }
}

extension ApiRequest {
    
    func getMainData( _ completionHandler: @escaping (String?) -> Void) {
        DefaultAlamofireManager.sharedManager.request(ApiRouter.Service.getMainData).validate().responseObject { (response: DataResponse<BaseModel>) in
            switch response.result {
                
            case .success(let result):
                completionHandler(result.data)
            case .failure(let err):
                completionHandler(nil)
            }
        }
    }
    
}
