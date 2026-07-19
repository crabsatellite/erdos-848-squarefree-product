import Erdos848.GeneratedLowDiagonalCoverage.CoreCertificate
import Erdos848.OutsideTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0086

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def outsideMarkerPartValid0_0086 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 88064
  | _ => True

theorem outsideMarkerPart0_0086 : outsideMarkerPartValid0_0086 outsideHistoryChunk0086 := by
  unfold outsideMarkerPartValid0_0086 outsideHistoryChunk0086
  decide

def outsideMarkerPartValid1_0086 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 88192
  | _ => True

theorem outsideMarkerPart1_0086 : outsideMarkerPartValid1_0086 outsideHistoryChunk0086 := by
  unfold outsideMarkerPartValid1_0086 outsideHistoryChunk0086
  decide

def outsideMarkerPartValid2_0086 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 88320
  | _ => True

theorem outsideMarkerPart2_0086 : outsideMarkerPartValid2_0086 outsideHistoryChunk0086 := by
  unfold outsideMarkerPartValid2_0086 outsideHistoryChunk0086
  decide

def outsideMarkerPartValid3_0086 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 88448
  | _ => True

theorem outsideMarkerPart3_0086 : outsideMarkerPartValid3_0086 outsideHistoryChunk0086 := by
  unfold outsideMarkerPartValid3_0086 outsideHistoryChunk0086
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
