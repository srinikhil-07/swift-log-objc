import Logging
import Foundation


@objc public class SwiftLogger: NSObject {
    let logger: Logger
    public var errorStream = false
    override init() {
        logger = Logger(label: "default")
        super.init()
    }
    @objc public  required init(_ label: String, with errorStream: Bool) {
        logger = Logger.init(label: label)
    }
    @objc  public func trace(message: String) {
        let log = Logger.Message(stringLiteral: message)
        logger.trace(log)
    }
    @objc public  func debug(message: String) {
        let log = Logger.Message(stringLiteral: message)
        logger.debug(log)
    }
    @objc  public func info(message: String) {
        let log = Logger.Message(stringLiteral: message)
        logger.info(log)
    }
    @objc public  func notice(message: String) {
        let log = Logger.Message(stringLiteral: message)
        logger.notice(log)
    }
    @objc  public func warning(message: String) {
        let log = Logger.Message(stringLiteral: message)
        logger.info(log)
    }
    @objc  public func critical(message: String) {
        let log = Logger.Message(stringLiteral: message)
        logger.critical(log)
    }
    @objc public  func error(message: String) {
        let log = Logger.Message(stringLiteral: message)
        logger.error(log)
    }
}


