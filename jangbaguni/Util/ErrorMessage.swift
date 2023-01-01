//
//  ErrorMessages.swift
//  jangbaguni
//
//  Created by Hoonjoo Park on 2023/01/01.
//

import Foundation

enum ErrorMessage: String, Error {
    case fetchError = "데이터를 불러올 수 없습니다."
    case defaultError = "알 수 없는 오류가 발생했습니다."
}
