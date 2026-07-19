import Erdos848.GeneratedLowDiagonalCoverage.CoreCertificate
import Erdos848.OutsideTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0039

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def outsideMarkerPartValid0_0039 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 39936
  | _ => True

theorem outsideMarkerPart0_0039 : outsideMarkerPartValid0_0039 outsideHistoryChunk0039 := by
  unfold outsideMarkerPartValid0_0039 outsideHistoryChunk0039
  decide

def outsideMarkerPartValid1_0039 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 40064
  | _ => True

theorem outsideMarkerPart1_0039 : outsideMarkerPartValid1_0039 outsideHistoryChunk0039 := by
  unfold outsideMarkerPartValid1_0039 outsideHistoryChunk0039
  decide

def outsideMarkerPartValid2_0039 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 40192
  | _ => True

theorem outsideMarkerPart2_0039 : outsideMarkerPartValid2_0039 outsideHistoryChunk0039 := by
  unfold outsideMarkerPartValid2_0039 outsideHistoryChunk0039
  decide

def outsideMarkerPartValid3_0039 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 40320
  | _ => True

theorem outsideMarkerPart3_0039 : outsideMarkerPartValid3_0039 outsideHistoryChunk0039 := by
  unfold outsideMarkerPartValid3_0039 outsideHistoryChunk0039
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
