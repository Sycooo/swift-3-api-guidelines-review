
@available(tvOS 8.0, *)
protocol MTLBuffer : MTLResource {
  var length: Int { get }
  func contents() -> UnsafeMutablePointer<Void>
  @available(tvOS 8.0, *)
  func newTexture(withDescriptor descriptor: MTLTextureDescriptor, offset: Int, bytesPerRow: Int) -> MTLTexture
}