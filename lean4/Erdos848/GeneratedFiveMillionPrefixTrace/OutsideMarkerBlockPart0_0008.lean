import Erdos848.GeneratedLowDiagonalCoverage.CoreCertificate
import Erdos848.OutsideTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0008

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def outsideMarkerPartValid0_0008 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 8192
  | _ => True

theorem outsideMarkerPart0_0008 : outsideMarkerPartValid0_0008 outsideHistoryChunk0008 := by
  unfold outsideMarkerPartValid0_0008 outsideHistoryChunk0008
  decide

def outsideMarkerPartValid1_0008 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 8320
  | _ => True

theorem outsideMarkerPart1_0008 : outsideMarkerPartValid1_0008 outsideHistoryChunk0008 := by
  unfold outsideMarkerPartValid1_0008 outsideHistoryChunk0008
  decide

def outsideMarkerPartValid2_0008 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 8448
  | _ => True

theorem outsideMarkerPart2_0008 : outsideMarkerPartValid2_0008 outsideHistoryChunk0008 := by
  unfold outsideMarkerPartValid2_0008 outsideHistoryChunk0008
  decide

def outsideMarkerPartValid3_0008 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 8576
  | _ => True

theorem outsideMarkerPart3_0008 : outsideMarkerPartValid3_0008 outsideHistoryChunk0008 := by
  unfold outsideMarkerPartValid3_0008 outsideHistoryChunk0008
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
