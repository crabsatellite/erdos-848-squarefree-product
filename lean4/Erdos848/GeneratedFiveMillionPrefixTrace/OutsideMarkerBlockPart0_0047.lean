import Erdos848.GeneratedLowDiagonalCoverage.CoreCertificate
import Erdos848.OutsideTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0047

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def outsideMarkerPartValid0_0047 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 48128
  | _ => True

theorem outsideMarkerPart0_0047 : outsideMarkerPartValid0_0047 outsideHistoryChunk0047 := by
  unfold outsideMarkerPartValid0_0047 outsideHistoryChunk0047
  decide

def outsideMarkerPartValid1_0047 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 48256
  | _ => True

theorem outsideMarkerPart1_0047 : outsideMarkerPartValid1_0047 outsideHistoryChunk0047 := by
  unfold outsideMarkerPartValid1_0047 outsideHistoryChunk0047
  decide

def outsideMarkerPartValid2_0047 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 48384
  | _ => True

theorem outsideMarkerPart2_0047 : outsideMarkerPartValid2_0047 outsideHistoryChunk0047 := by
  unfold outsideMarkerPartValid2_0047 outsideHistoryChunk0047
  decide

def outsideMarkerPartValid3_0047 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 48512
  | _ => True

theorem outsideMarkerPart3_0047 : outsideMarkerPartValid3_0047 outsideHistoryChunk0047 := by
  unfold outsideMarkerPartValid3_0047 outsideHistoryChunk0047
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
