
@available(OSX 10.11, *)
class MTKView : NSView, Coding {
  init(frame frameRect: CGRect, device: MTLDevice?)
  init(coder: Coder)
  weak var delegate: @sil_weak MTKViewDelegate?
  var device: MTLDevice?
  var currentDrawable: CAMetalDrawable? { get }
  var framebufferOnly: Bool
  var presentsWithTransaction: Bool
  var colorPixelFormat: MTLPixelFormat
  var depthStencilPixelFormat: MTLPixelFormat
  var sampleCount: Int
  var clearColor: MTLClearColor
  var clearDepth: Double
  var clearStencil: UInt32
  var depthStencilTexture: MTLTexture? { get }
  var multisampleColorTexture: MTLTexture? { get }
  func releaseDrawables()
  var currentRenderPassDescriptor: MTLRenderPassDescriptor? { get }
  var preferredFramesPerSecond: Int
  var enableSetNeedsDisplay: Bool
  var autoResizeDrawable: Bool
  var drawableSize: CGSize
  var isPaused: Bool
  func draw()
  convenience init(frame frameRect: Rect)
  convenience init()
}
@available(OSX 10.11, *)
protocol MTKViewDelegate : ObjectProtocol {
  func mtkView(view: MTKView, drawableSizeWillChange size: CGSize)
  func draw(in view: MTKView)
}