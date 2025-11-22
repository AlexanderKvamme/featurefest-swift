import Foundation

/// Errors that can occur when using the Featurefest API
public enum FeaturefestError: Error, LocalizedError {
    case invalidAPIKey
    case invalidResponse
    case httpError(Int)
    case apiError(String)
    case networkError
    case decodingError
    case userAlreadyVoted
    case featureNotFound
    case boardNotFound
    case invalidRequest
    
    public var errorDescription: String? {
        switch self {
        case .invalidAPIKey:
            return "Invalid API key. Please check your board ID."
        case .invalidResponse:
            return "Invalid response from server."
        case .httpError(let code):
            return "HTTP error with status code: \(code)"
        case .apiError(let message):
            return "API error: \(message)"
        case .networkError:
            return "Network error occurred."
        case .decodingError:
            return "Failed to decode response."
        case .userAlreadyVoted:
            return "User has already voted on this feature."
        case .featureNotFound:
            return "Feature not found."
        case .boardNotFound:
            return "Board not found."
        case .invalidRequest:
            return "Invalid request. Only upvotes are supported."
        }
    }
    
    public var recoverySuggestion: String? {
        switch self {
        case .invalidAPIKey:
            return "Verify that your board ID is correct and that the board exists."
        case .networkError:
            return "Check your internet connection and try again."
        case .userAlreadyVoted:
            return "Users can only vote once per feature. You can change your vote."
        default:
            return "Please try again later."
        }
    }
}