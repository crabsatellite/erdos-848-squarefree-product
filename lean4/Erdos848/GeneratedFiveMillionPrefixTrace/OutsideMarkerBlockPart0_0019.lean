import Erdos848.GeneratedLowDiagonalCoverage.CoreCertificate
import Erdos848.OutsideTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0019

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def outsideMarkerPartValid0_0019 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 19456
  | _ => True

theorem outsideMarkerPart0_0019 : outsideMarkerPartValid0_0019 outsideHistoryChunk0019 := by
  unfold outsideMarkerPartValid0_0019 outsideHistoryChunk0019
  decide

def outsideMarkerPartValid1_0019 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 19584
  | _ => True

theorem outsideMarkerPart1_0019 : outsideMarkerPartValid1_0019 outsideHistoryChunk0019 := by
  unfold outsideMarkerPartValid1_0019 outsideHistoryChunk0019
  decide

def outsideMarkerPartValid2_0019 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 19712
  | _ => True

theorem outsideMarkerPart2_0019 : outsideMarkerPartValid2_0019 outsideHistoryChunk0019 := by
  unfold outsideMarkerPartValid2_0019 outsideHistoryChunk0019
  decide

def outsideMarkerPartValid3_0019 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 19840
  | _ => True

theorem outsideMarkerPart3_0019 : outsideMarkerPartValid3_0019 outsideHistoryChunk0019 := by
  unfold outsideMarkerPartValid3_0019 outsideHistoryChunk0019
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
