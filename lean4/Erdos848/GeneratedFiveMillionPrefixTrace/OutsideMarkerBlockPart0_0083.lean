import Erdos848.GeneratedLowDiagonalCoverage.CoreCertificate
import Erdos848.OutsideTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0083

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def outsideMarkerPartValid0_0083 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 84992
  | _ => True

theorem outsideMarkerPart0_0083 : outsideMarkerPartValid0_0083 outsideHistoryChunk0083 := by
  unfold outsideMarkerPartValid0_0083 outsideHistoryChunk0083
  decide

def outsideMarkerPartValid1_0083 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 85120
  | _ => True

theorem outsideMarkerPart1_0083 : outsideMarkerPartValid1_0083 outsideHistoryChunk0083 := by
  unfold outsideMarkerPartValid1_0083 outsideHistoryChunk0083
  decide

def outsideMarkerPartValid2_0083 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 85248
  | _ => True

theorem outsideMarkerPart2_0083 : outsideMarkerPartValid2_0083 outsideHistoryChunk0083 := by
  unfold outsideMarkerPartValid2_0083 outsideHistoryChunk0083
  decide

def outsideMarkerPartValid3_0083 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 85376
  | _ => True

theorem outsideMarkerPart3_0083 : outsideMarkerPartValid3_0083 outsideHistoryChunk0083 := by
  unfold outsideMarkerPartValid3_0083 outsideHistoryChunk0083
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
