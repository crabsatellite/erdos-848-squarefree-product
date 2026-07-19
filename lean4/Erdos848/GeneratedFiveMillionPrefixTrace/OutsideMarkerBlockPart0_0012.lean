import Erdos848.GeneratedLowDiagonalCoverage.CoreCertificate
import Erdos848.OutsideTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0012

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def outsideMarkerPartValid0_0012 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 12288
  | _ => True

theorem outsideMarkerPart0_0012 : outsideMarkerPartValid0_0012 outsideHistoryChunk0012 := by
  unfold outsideMarkerPartValid0_0012 outsideHistoryChunk0012
  decide

def outsideMarkerPartValid1_0012 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 12416
  | _ => True

theorem outsideMarkerPart1_0012 : outsideMarkerPartValid1_0012 outsideHistoryChunk0012 := by
  unfold outsideMarkerPartValid1_0012 outsideHistoryChunk0012
  decide

def outsideMarkerPartValid2_0012 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 12544
  | _ => True

theorem outsideMarkerPart2_0012 : outsideMarkerPartValid2_0012 outsideHistoryChunk0012 := by
  unfold outsideMarkerPartValid2_0012 outsideHistoryChunk0012
  decide

def outsideMarkerPartValid3_0012 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 12672
  | _ => True

theorem outsideMarkerPart3_0012 : outsideMarkerPartValid3_0012 outsideHistoryChunk0012 := by
  unfold outsideMarkerPartValid3_0012 outsideHistoryChunk0012
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
