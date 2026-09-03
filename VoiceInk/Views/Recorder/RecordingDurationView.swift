import SwiftUI

struct RecordingDurationView: View {
    let startTime: Date

    var body: some View {
        TimelineView(.periodic(from: startTime, by: 1)) { context in
            Text(formattedDuration(from: startTime, to: context.date))
                .font(.system(size: 11, weight: .medium, design: .monospaced))
                .foregroundColor(.white.opacity(0.7))
                .lineLimit(1)
                .fixedSize()
        }
    }

    private func formattedDuration(from start: Date, to now: Date) -> String {
        let seconds = max(0, Int(now.timeIntervalSince(start)))
        return String(format: "%d:%02d", seconds / 60, seconds % 60)
    }
}
