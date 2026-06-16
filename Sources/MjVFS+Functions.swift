import C_mujoco

extension MjVFS {
  ///  Unmount a previously mounted ResourceProvider; return 0: success, -1: not found in VFS.
  @inlinable
  public mutating func unmountVFS(filename: String) -> Int32 {
    return mj_unmountVFS(self._vfs, filename)
  }
  ///  Check if buffer exists in VFS; return 1: exists, 0: not found.
  @inlinable
  public mutating func containsBufferVFS(name: String) -> Int32 {
    return mj_containsBufferVFS(self._vfs, name)
  }
  ///  Check if file exists in VFS; return 1: exists, 0: not found.
  @inlinable
  public mutating func containsFileVFS(directory: String, filename: String) -> Int32 {
    return mj_containsFileVFS(self._vfs, directory, filename)
  }
}