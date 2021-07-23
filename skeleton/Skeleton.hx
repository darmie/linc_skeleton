package skeleton;

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
    public static function add_stream(skeleton:Pointer<OggSkeleton>, serial_no:Int):Int;

    @:native("oggskel_decode_header")
    public static function decode_header(skeleton:Pointer<OggSkeleton>, op:Pointer<OggPacket>):Int;
    
} //Skeleton



@:keep
@:include('linc_skeleton.h')
@:native("OggSkeleton")
extern class OggSkeleton{}

@:keep
@:include('linc_skeleton.h')
@:native("OggSkeletonError")
extern class OggSkeletonError{}