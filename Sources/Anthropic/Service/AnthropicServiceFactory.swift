//
//  AnthropicServiceFactory.swift
//
//
//  Created by James Rochabrun on 1/28/24.
//

import Foundation


public final class AnthropicServiceFactory {
   
   /// Creates and returns an instance of `AnthropicService`.
   ///
   /// - Parameters:
   ///   - apiKey: The API key required for authentication.
   ///   - apiVersion: The Anthropic api version. Currently "2023-06-01". (Can be overriden)
   ///   - basePath: An overridable base path for requests, defaults to https://api.anthropic.com
   ///   - betaHeaders: An array of headers for Anthropic's beta features.
   ///   - configuration: The URL session configuration to be used for network calls (default is `.default`).
   ///   - debugEnabled: If `true` service prints event on DEBUG builds, default to `false`.
   ///
   /// - Returns: A fully configured object conforming to `AnthropicService`.
   public static func service(
      apiKey: String,
      apiVersion: String = "2023-06-01",
      basePath: String = "https://api.anthropic.com",
      betaHeaders: [String]?,
      configuration: URLSessionConfiguration = .default,
      debugEnabled: Bool = false)
      -> AnthropicService
   {
      DefaultAnthropicService(
         apiKey: apiKey,
         apiVersion: apiVersion, 
         basePath: basePath, 
         betaHeaders: betaHeaders,
         configuration: configuration,
         debugEnabled: debugEnabled)
   }
}
