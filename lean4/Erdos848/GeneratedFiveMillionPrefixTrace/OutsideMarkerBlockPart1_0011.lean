import Erdos848.GeneratedLowDiagonalCoverage.CoreCertificate
import Erdos848.OutsideTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0011

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def outsideMarkerPartValid4_0011 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ part _) _)) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 11776
  | _ => True

theorem outsideMarkerPart4_0011 : outsideMarkerPartValid4_0011 outsideHistoryChunk0011 := by
  unfold outsideMarkerPartValid4_0011 outsideHistoryChunk0011
  decide

def outsideMarkerPartValid5_0011 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 11904
  | _ => True

theorem outsideMarkerPart5_0011 : outsideMarkerPartValid5_0011 outsideHistoryChunk0011 := by
  unfold outsideMarkerPartValid5_0011 outsideHistoryChunk0011
  decide

def outsideMarkerPartValid6_0011 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 12032
  | _ => True

theorem outsideMarkerPart6_0011 : outsideMarkerPartValid6_0011 outsideHistoryChunk0011 := by
  unfold outsideMarkerPartValid6_0011 outsideHistoryChunk0011
  decide

def outsideMarkerPartValid7_0011 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 12160
  | _ => True

theorem outsideMarkerPart7_0011 : outsideMarkerPartValid7_0011 outsideHistoryChunk0011 := by
  unfold outsideMarkerPartValid7_0011 outsideHistoryChunk0011
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
