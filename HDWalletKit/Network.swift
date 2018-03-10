public enum Network {
    case main
    case ropsten

    // https://github.com/satoshilabs/slips/blob/master/slip-0044.md
    public var coinType: UInt32 {
        switch self {
        case .main:
            return 60
        case .ropsten:
            return 1
        }
    }

    public var privateKeyPrefix: UInt32 {
        switch self {
        case .main:
            return 0x0488ADE4
        case .ropsten:
            return 0x04358394
        }
    }
}
