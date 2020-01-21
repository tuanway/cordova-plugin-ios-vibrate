import UIKit

@objc(Vibrate) class Vibrate : CDVPlugin {
  @objc(vibrate:) func vibrate(_ command: CDVInvokedUrlCommand) {
    var pluginResult = CDVPluginResult(
      status: CDVCommandStatus_ERROR
    )

    let msg = command.arguments[0] as? String ?? ""

    if #available(iOS 10.0, *), msg.count > 0 {

      switch (msg) {
        case "heavy":
          UIImpactFeedbackGenerator(style: .heavy).impactOccurred()
        case "light":
          UIImpactFeedbackGenerator(style: .light).impactOccurred()
        case "medium":
          UIImpactFeedbackGenerator(style: .medium).impactOccurred()
        case "rigid":
            if #available(iOS 13.0, *) {
              UIImpactFeedbackGenerator(style: .rigid).impactOccurred()
            } else {
              UIImpactFeedbackGenerator(style: .light).impactOccurred()
            }
        case "soft":
            if #available(iOS 13.0, *) {
              UIImpactFeedbackGenerator(style: .soft).impactOccurred()
            } else {
              UIImpactFeedbackGenerator(style: .light).impactOccurred()
            }
        case "success":
          UINotificationFeedbackGenerator().notificationOccurred(.success)
        case "warning":
          UINotificationFeedbackGenerator().notificationOccurred(.warning)
        case "error":
          UINotificationFeedbackGenerator().notificationOccurred(.error)
        case "selectionChanged":
          UISelectionFeedbackGenerator().selectionChanged()      
        default:
          break
        }

      pluginResult = CDVPluginResult(
        status: CDVCommandStatus_OK,
        messageAs: msg
      )
    }

    self.commandDelegate!.send(
      pluginResult, 
      callbackId: command.callbackId
    )
  }
}
