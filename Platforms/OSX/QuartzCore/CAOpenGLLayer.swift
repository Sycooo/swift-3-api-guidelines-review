
class CAOpenGLLayer : CALayer {
  var isAsynchronous: Bool
  func canDraw(incglContext ctx: CGLContextObj, pixelFormat pf: CGLPixelFormatObj, forLayerTime t: CFTimeInterval, displayTime ts: UnsafePointer<CVTimeStamp>) -> Bool
  func draw(incglContext ctx: CGLContextObj, pixelFormat pf: CGLPixelFormatObj, forLayerTime t: CFTimeInterval, displayTime ts: UnsafePointer<CVTimeStamp>)
  func copyCGLPixelFormatForDisplayMask(mask: UInt32) -> CGLPixelFormatObj
  func releaseCGLPixelFormat(pf: CGLPixelFormatObj)
  func copyCGLContext(forPixelFormat pf: CGLPixelFormatObj) -> CGLContextObj
  func releaseCGLContext(ctx: CGLContextObj)
  var colorspace: CGColorSpace
  var wantsExtendedDynamicRangeContent: Bool
  init()
  init(layer: AnyObject)
  init?(coder aDecoder: Coder)
}