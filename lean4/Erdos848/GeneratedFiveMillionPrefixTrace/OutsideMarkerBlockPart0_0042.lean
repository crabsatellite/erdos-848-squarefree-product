import Erdos848.GeneratedLowDiagonalCoverage.CoreCertificate
import Erdos848.OutsideTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0042

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def outsideMarkerPartValid0_0042 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 43008
  | _ => True

theorem outsideMarkerPart0_0042 : outsideMarkerPartValid0_0042 outsideHistoryChunk0042 := by
  unfold outsideMarkerPartValid0_0042 outsideHistoryChunk0042
  decide

def outsideMarkerPartValid1_0042 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 43136
  | _ => True

theorem outsideMarkerPart1_0042 : outsideMarkerPartValid1_0042 outsideHistoryChunk0042 := by
  unfold outsideMarkerPartValid1_0042 outsideHistoryChunk0042
  decide

def outsideMarkerPartValid2_0042 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 43264
  | _ => True

theorem outsideMarkerPart2_0042 : outsideMarkerPartValid2_0042 outsideHistoryChunk0042 := by
  unfold outsideMarkerPartValid2_0042 outsideHistoryChunk0042
  decide

def outsideMarkerPartValid3_0042 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 43392
  | _ => True

theorem outsideMarkerPart3_0042 : outsideMarkerPartValid3_0042 outsideHistoryChunk0042 := by
  unfold outsideMarkerPartValid3_0042 outsideHistoryChunk0042
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
