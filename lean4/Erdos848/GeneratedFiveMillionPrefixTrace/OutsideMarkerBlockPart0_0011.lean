import Erdos848.GeneratedLowDiagonalCoverage.CoreCertificate
import Erdos848.OutsideTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0011

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def outsideMarkerPartValid0_0011 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 11264
  | _ => True

theorem outsideMarkerPart0_0011 : outsideMarkerPartValid0_0011 outsideHistoryChunk0011 := by
  unfold outsideMarkerPartValid0_0011 outsideHistoryChunk0011
  decide

def outsideMarkerPartValid1_0011 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 11392
  | _ => True

theorem outsideMarkerPart1_0011 : outsideMarkerPartValid1_0011 outsideHistoryChunk0011 := by
  unfold outsideMarkerPartValid1_0011 outsideHistoryChunk0011
  decide

def outsideMarkerPartValid2_0011 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 11520
  | _ => True

theorem outsideMarkerPart2_0011 : outsideMarkerPartValid2_0011 outsideHistoryChunk0011 := by
  unfold outsideMarkerPartValid2_0011 outsideHistoryChunk0011
  decide

def outsideMarkerPartValid3_0011 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 11648
  | _ => True

theorem outsideMarkerPart3_0011 : outsideMarkerPartValid3_0011 outsideHistoryChunk0011 := by
  unfold outsideMarkerPartValid3_0011 outsideHistoryChunk0011
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
