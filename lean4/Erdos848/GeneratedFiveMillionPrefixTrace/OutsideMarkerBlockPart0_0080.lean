import Erdos848.GeneratedLowDiagonalCoverage.CoreCertificate
import Erdos848.OutsideTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0080

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def outsideMarkerPartValid0_0080 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 81920
  | _ => True

theorem outsideMarkerPart0_0080 : outsideMarkerPartValid0_0080 outsideHistoryChunk0080 := by
  unfold outsideMarkerPartValid0_0080 outsideHistoryChunk0080
  decide

def outsideMarkerPartValid1_0080 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 82048
  | _ => True

theorem outsideMarkerPart1_0080 : outsideMarkerPartValid1_0080 outsideHistoryChunk0080 := by
  unfold outsideMarkerPartValid1_0080 outsideHistoryChunk0080
  decide

def outsideMarkerPartValid2_0080 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 82176
  | _ => True

theorem outsideMarkerPart2_0080 : outsideMarkerPartValid2_0080 outsideHistoryChunk0080 := by
  unfold outsideMarkerPartValid2_0080 outsideHistoryChunk0080
  decide

def outsideMarkerPartValid3_0080 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 82304
  | _ => True

theorem outsideMarkerPart3_0080 : outsideMarkerPartValid3_0080 outsideHistoryChunk0080 := by
  unfold outsideMarkerPartValid3_0080 outsideHistoryChunk0080
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
