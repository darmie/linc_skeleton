package skeleton;

import cpp.Int32;
import cpp.RawPointer;
import cpp.Int64;
import cpp.Pointer;
import ogg.OggPage.OggPacket;

@:keep
@:include('linc_skeleton.h')
#if !display
@:build(linc.Linc.touch())
@:build(linc.Linc.xml('skeleton'))
#end
extern class Skeleton {
    @:native("oggskel_new")
    public static function init():Pointer<OggSkeleton>;

    @:native("oggskel_destroy")
    public static function destroy(skeleton:Pointer<OggSkeleton>):OggSkeletonError;

    @:native("oggskel_encode_header")
    public static function encode_header(skeleton:Pointer<OggSkeleton>, op:Pointer<OggPacket>):Int;

    @:native("oggskel_encode_add_stream")
    public static function add_stream(skeleton:Pointer<OggSkeleton>, serial_no:Int64):Int;

    @:native("oggskel_decode_header")
    public static function decode_header(skeleton:Pointer<OggSkeleton>, op:Pointer<OggPacket>):Int;

    @:native("oggskel_get_segment_len")
    public static function  get_segment_len(skeleton:Pointer<OggSkeleton>, len:RawPointer<Int64>):OggSkeletonError;

    @:native("oggskel_get_ver_maj")
    public static function get_ver_maj(skeleton:Pointer<OggSkeleton>, ver_maj:RawPointer<Int64>):OggSkeletonError;

    @:native("oggskel_get_ver_min")
    public static function get_ver_min(skeleton:Pointer<OggSkeleton>, ver_min:RawPointer<Int64>):OggSkeletonError;

    @:native("oggskel_get_ptime_num")
    public static function get_ptime_num(skeleton:Pointer<OggSkeleton>, pres_num:RawPointer<Int64>):OggSkeletonError;

    @:native("oggskel_set_ptime_num")
    public static function set_ptime_num(skeleton:Pointer<OggSkeleton>, pres_num:Int64):OggSkeletonError;


    @:native("oggskel_get_ptime_denum")
    public static function get_ptime_denum(skeleton:Pointer<OggSkeleton>, pres_denum:RawPointer<Int64>):OggSkeletonError;

    @:native("oggskel_set_ptime_denum")
    public static function set_ptime_denum(skeleton:Pointer<OggSkeleton>, pres_denum:Int64):OggSkeletonError;

    @:native("oggskel_get_first_sample_num")
    public static function get_first_sample_num(skeleton:Pointer<OggSkeleton>, serial_nos:RawPointer<Int32>, first_sample_num:RawPointer<Int64>):OggSkeletonError;

    @:native("oggskel_get_first_sample_denum")
    public static function get_first_sample_denum(skeleton:Pointer<OggSkeleton>, serial_nos:RawPointer<Int32>, first_sample_denum:RawPointer<Int64>):OggSkeletonError;

    @:native("oggskel_get_last_sample_num")
    public static function get_last_sample_num(skeleton:Pointer<OggSkeleton>, serial_nos:RawPointer<Int32>, last_sample_num:RawPointer<Int64>):OggSkeletonError;

    @:native("oggskel_get_last_sample_denum")
    public static function get_last_sample_denum(skeleton:Pointer<OggSkeleton>, serial_nos:RawPointer<Int32>, last_sample_denum:RawPointer<Int64>):OggSkeletonError;

    @:native("oggskel_get_keypoint_offset")
    public static function get_keypoint_offset(skeleton:Pointer<OggSkeleton>, serial_no:RawPointer<Int32>, len:Int, time_ms:Int64, offset:RawPointer<Int64>):OggSkeletonError;

    
} //Skeleton



@:keep
@:include('linc_skeleton.h')
@:native("OggSkeleton")
extern class OggSkeleton{}


extern enum abstract OggSkeletonError(Int) from Int to Int {
    final SKELETON_ERR_OK                 = 0;
    final SKELETON_ERR_GENERIC            = -1;
    final SKELETON_ERR_BAD_SKELETON       = -2;
    final SKELETON_ERR_VERSION            = -3;
    final SKELETON_ERR_OUT_OF_MEMORY      = -4;
    final SKELETON_ERR_EOS_AWAITING       = -5;
    final SKELETON_WARN_EOS_NOT_EMTPY     = -6;
    final SKELETON_ERR_MALICIOUS_FISBONE  = -7;
    final SKELETON_ERR_BAD_SERIAL_NO      = -8;
    final SKELETON_ERR_DENUM_ZERO         = -9;
    final SKELETON_ERR_MALICIOUS_INDEX    = -10;
    final SKELETON_ERR_UNSUPPORTED_VERSION= -11;
    final SKELETON_WARN_FISHEAD_NOT_BOS   = -12;
    final SKELETON_ERR_BAD_PACKET         = -13;
    final SKELETON_WARN_BAD_ORDER         = -14;
    final SKELETON_ERR_NO_CONTENT_TYPE    = -15;
    final SKELETON_ERR_BAD_ARG            = -16;
    final SKELETON_ERR_OUT_OF_RANGE       = -17;
    final SKELETON_ERR_MALICIOUS_FISHEAD  = -18;
    final SKELETON_ERR_NO_INDEX           = -19;  
}