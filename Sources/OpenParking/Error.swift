/// A general error type indicating failure during the loading or decoding of data.
public enum OpenParkingError: Error {
    case decoding(description: String, underlyingError: Error?)
    case network(Error)
    case server(status: Int, response: String)
    case missingGeodata
    case other(String)
}

/// An error indicating that aggregating of data for a specific lot has failed. This is primary for use in `LotResult`.
public enum LotError: Error {
    case missingMetadata(lot: String)
    case missingMetadataField(String, lot: String)
    case other(reason: String)
}

public typealias LotResult = Result<Lot, LotError>
