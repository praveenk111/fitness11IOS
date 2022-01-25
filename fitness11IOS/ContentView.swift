

import SwiftUI
import UIKit
import MessageUI
struct ContentView: View {

    @State var result: Result<MFMailComposeResult, Error>? = nil
    @State var isShowingMailView = false

    var body: some View {

        VStack {
            if MFMailComposeViewController.canSendMail() {
                Button("Show mail view") {
                    self.isShowingMailView.toggle()
                }
            } else {
                Text("Can't send emails from this device")
            }
            if result != nil {
                Text("Result: \(String(describing: result))")
                    .lineLimit(nil)
            }
        }
        .sheet(isPresented: $isShowingMailView) {
            MailView(isShowing: self.$isShowingMailView, result: self.$result)
        }

    }

}
