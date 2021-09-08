import SwiftUI

struct MeetingView: View {
    @Binding var scrum: DailyScrum
    @StateObject var scrumTimer = ScrumTimer()
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 16.0)
                .fill(scrum.color)
            VStack {
                MeetingHeaderView(secondsElapsed: <#T##Int#>, secondsRemaining: <#T##Int#>, scrumColor: <#T##Color#>)
                Circle()
                    .strokeBorder(lineWidth: 24, antialiased: true)
                HStack {
                    Text("Speaker 1 of 3")
                    Spacer()
                    Button(action: {}) {
                        Image(systemName:"forward.fill")
                    }
                    .accessibilityLabel(Text("Next speaker"))
                }
            }
        }
        .padding()
        .foregroundColor(scrum.color.accessibleFontColor)
        .onAppear {
            scrumTimer.reset(lengthInMinutes: scrum.lengthInMinutes, attendees: scrum.attendees)
            scrumTimer.stopScrum()
        }
        .onDisappear {
            scrumTimer.stopScrum()
        }
    }
}

struct MeetingView_Previews: PreviewProvider {
    static var previews: some View {
        MeetingView(scrum: .constant(DailyScrum.data[0]))
    }
}
