import Erdos848.GeneratedLowDiagonalCoverage.CoreCertificate
import Erdos848.OutsideTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0071

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def outsideMarkerPartValid0_0071 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 72704
  | _ => True

theorem outsideMarkerPart0_0071 : outsideMarkerPartValid0_0071 outsideHistoryChunk0071 := by
  unfold outsideMarkerPartValid0_0071 outsideHistoryChunk0071
  decide

def outsideMarkerPartValid1_0071 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 72832
  | _ => True

theorem outsideMarkerPart1_0071 : outsideMarkerPartValid1_0071 outsideHistoryChunk0071 := by
  unfold outsideMarkerPartValid1_0071 outsideHistoryChunk0071
  decide

def outsideMarkerPartValid2_0071 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 72960
  | _ => True

theorem outsideMarkerPart2_0071 : outsideMarkerPartValid2_0071 outsideHistoryChunk0071 := by
  unfold outsideMarkerPartValid2_0071 outsideHistoryChunk0071
  decide

def outsideMarkerPartValid3_0071 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 73088
  | _ => True

theorem outsideMarkerPart3_0071 : outsideMarkerPartValid3_0071 outsideHistoryChunk0071 := by
  unfold outsideMarkerPartValid3_0071 outsideHistoryChunk0071
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
