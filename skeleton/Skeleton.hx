package skeleton;

@:keep
@:include('linc_skeleton.h')
#if !display
@:build(linc.Linc.touch())
@:build(linc.Linc.xml('skeleton'))
#end
extern class Skeleton {} //Skeleton