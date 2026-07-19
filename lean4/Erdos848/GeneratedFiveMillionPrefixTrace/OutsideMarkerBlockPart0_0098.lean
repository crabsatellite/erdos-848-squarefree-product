import Erdos848.GeneratedLowDiagonalCoverage.CoreCertificate
import Erdos848.OutsideTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0098

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def outsideMarkerPartValid0_0098 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 100352
  | _ => True

theorem outsideMarkerPart0_0098 : outsideMarkerPartValid0_0098 outsideHistoryChunk0098 := by
  unfold outsideMarkerPartValid0_0098 outsideHistoryChunk0098
  decide

def outsideMarkerPartValid1_0098 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 100480
  | _ => True

theorem outsideMarkerPart1_0098 : outsideMarkerPartValid1_0098 outsideHistoryChunk0098 := by
  unfold outsideMarkerPartValid1_0098 outsideHistoryChunk0098
  decide

def outsideMarkerPartValid2_0098 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 100608
  | _ => True

theorem outsideMarkerPart2_0098 : outsideMarkerPartValid2_0098 outsideHistoryChunk0098 := by
  unfold outsideMarkerPartValid2_0098 outsideHistoryChunk0098
  decide

def outsideMarkerPartValid3_0098 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 100736
  | _ => True

theorem outsideMarkerPart3_0098 : outsideMarkerPartValid3_0098 outsideHistoryChunk0098 := by
  unfold outsideMarkerPartValid3_0098 outsideHistoryChunk0098
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
