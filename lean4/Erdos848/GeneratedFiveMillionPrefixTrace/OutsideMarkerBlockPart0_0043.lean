import Erdos848.GeneratedLowDiagonalCoverage.CoreCertificate
import Erdos848.OutsideTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0043

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def outsideMarkerPartValid0_0043 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 44032
  | _ => True

theorem outsideMarkerPart0_0043 : outsideMarkerPartValid0_0043 outsideHistoryChunk0043 := by
  unfold outsideMarkerPartValid0_0043 outsideHistoryChunk0043
  decide

def outsideMarkerPartValid1_0043 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 44160
  | _ => True

theorem outsideMarkerPart1_0043 : outsideMarkerPartValid1_0043 outsideHistoryChunk0043 := by
  unfold outsideMarkerPartValid1_0043 outsideHistoryChunk0043
  decide

def outsideMarkerPartValid2_0043 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 44288
  | _ => True

theorem outsideMarkerPart2_0043 : outsideMarkerPartValid2_0043 outsideHistoryChunk0043 := by
  unfold outsideMarkerPartValid2_0043 outsideHistoryChunk0043
  decide

def outsideMarkerPartValid3_0043 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 44416
  | _ => True

theorem outsideMarkerPart3_0043 : outsideMarkerPartValid3_0043 outsideHistoryChunk0043 := by
  unfold outsideMarkerPartValid3_0043 outsideHistoryChunk0043
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
