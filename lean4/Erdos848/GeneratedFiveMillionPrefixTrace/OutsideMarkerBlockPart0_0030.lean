import Erdos848.GeneratedLowDiagonalCoverage.CoreCertificate
import Erdos848.OutsideTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0030

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def outsideMarkerPartValid0_0030 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 30720
  | _ => True

theorem outsideMarkerPart0_0030 : outsideMarkerPartValid0_0030 outsideHistoryChunk0030 := by
  unfold outsideMarkerPartValid0_0030 outsideHistoryChunk0030
  decide

def outsideMarkerPartValid1_0030 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 30848
  | _ => True

theorem outsideMarkerPart1_0030 : outsideMarkerPartValid1_0030 outsideHistoryChunk0030 := by
  unfold outsideMarkerPartValid1_0030 outsideHistoryChunk0030
  decide

def outsideMarkerPartValid2_0030 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 30976
  | _ => True

theorem outsideMarkerPart2_0030 : outsideMarkerPartValid2_0030 outsideHistoryChunk0030 := by
  unfold outsideMarkerPartValid2_0030 outsideHistoryChunk0030
  decide

def outsideMarkerPartValid3_0030 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 31104
  | _ => True

theorem outsideMarkerPart3_0030 : outsideMarkerPartValid3_0030 outsideHistoryChunk0030 := by
  unfold outsideMarkerPartValid3_0030 outsideHistoryChunk0030
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
