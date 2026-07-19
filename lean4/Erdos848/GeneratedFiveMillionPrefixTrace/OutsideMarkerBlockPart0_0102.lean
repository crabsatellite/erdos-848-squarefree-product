import Erdos848.GeneratedLowDiagonalCoverage.CoreCertificate
import Erdos848.OutsideTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0102

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def outsideMarkerPartValid0_0102 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 104448
  | _ => True

theorem outsideMarkerPart0_0102 : outsideMarkerPartValid0_0102 outsideHistoryChunk0102 := by
  unfold outsideMarkerPartValid0_0102 outsideHistoryChunk0102
  decide

def outsideMarkerPartValid1_0102 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 104576
  | _ => True

theorem outsideMarkerPart1_0102 : outsideMarkerPartValid1_0102 outsideHistoryChunk0102 := by
  unfold outsideMarkerPartValid1_0102 outsideHistoryChunk0102
  decide

def outsideMarkerPartValid2_0102 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 104704
  | _ => True

theorem outsideMarkerPart2_0102 : outsideMarkerPartValid2_0102 outsideHistoryChunk0102 := by
  unfold outsideMarkerPartValid2_0102 outsideHistoryChunk0102
  decide

def outsideMarkerPartValid3_0102 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 104832
  | _ => True

theorem outsideMarkerPart3_0102 : outsideMarkerPartValid3_0102 outsideHistoryChunk0102 := by
  unfold outsideMarkerPartValid3_0102 outsideHistoryChunk0102
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
