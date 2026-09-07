//
//  VoiceInkTests.swift
//  VoiceInkTests
//
//  Created by Prakash Joshi on 15/10/2024.
//

import Testing
@testable import VoiceInk

struct VoiceInkTests {

    @Test func example() async throws {
        // Write your test here and use APIs like `#expect(...)` to check expected conditions.
    }

    @Test func appendsRecordingDurationOnANewLine() {
        let output = TranscriptionDurationAppender.append(to: "Hello world.", duration: 65.9)

        #expect(output == "Hello world.\nDuration: 1:05")
    }

}
