import Erdos848.GeneratedLowDiagonalCoverage.CoreCertificate
import Erdos848.OutsideTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0085

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def outsideMarkerPartValid0_0085 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 87040
  | _ => True

theorem outsideMarkerPart0_0085 : outsideMarkerPartValid0_0085 outsideHistoryChunk0085 := by
  unfold outsideMarkerPartValid0_0085 outsideHistoryChunk0085
  decide

def outsideMarkerPartValid1_0085 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 87168
  | _ => True

theorem outsideMarkerPart1_0085 : outsideMarkerPartValid1_0085 outsideHistoryChunk0085 := by
  unfold outsideMarkerPartValid1_0085 outsideHistoryChunk0085
  decide

def outsideMarkerPartValid2_0085 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 87296
  | _ => True

theorem outsideMarkerPart2_0085 : outsideMarkerPartValid2_0085 outsideHistoryChunk0085 := by
  unfold outsideMarkerPartValid2_0085 outsideHistoryChunk0085
  decide

def outsideMarkerPartValid3_0085 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 87424
  | _ => True

theorem outsideMarkerPart3_0085 : outsideMarkerPartValid3_0085 outsideHistoryChunk0085 := by
  unfold outsideMarkerPartValid3_0085 outsideHistoryChunk0085
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
