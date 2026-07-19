import Erdos848.GeneratedLowDiagonalCoverage.CoreCertificate
import Erdos848.OutsideTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0118

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def outsideMarkerPartValid0_0118 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 120832
  | _ => True

theorem outsideMarkerPart0_0118 : outsideMarkerPartValid0_0118 outsideHistoryChunk0118 := by
  unfold outsideMarkerPartValid0_0118 outsideHistoryChunk0118
  decide

def outsideMarkerPartValid1_0118 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 120960
  | _ => True

theorem outsideMarkerPart1_0118 : outsideMarkerPartValid1_0118 outsideHistoryChunk0118 := by
  unfold outsideMarkerPartValid1_0118 outsideHistoryChunk0118
  decide

def outsideMarkerPartValid2_0118 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 121088
  | _ => True

theorem outsideMarkerPart2_0118 : outsideMarkerPartValid2_0118 outsideHistoryChunk0118 := by
  unfold outsideMarkerPartValid2_0118 outsideHistoryChunk0118
  decide

def outsideMarkerPartValid3_0118 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 121216
  | _ => True

theorem outsideMarkerPart3_0118 : outsideMarkerPartValid3_0118 outsideHistoryChunk0118 := by
  unfold outsideMarkerPartValid3_0118 outsideHistoryChunk0118
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
