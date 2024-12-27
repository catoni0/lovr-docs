return {
  summary = 'A mesh Shape.',
  description = 'A type of `Shape` that can be used for triangle meshes.',
  extends = 'Shape',
  notes = [[
    MeshShape is static. If the collider contains a MeshShape, it will be forced to become static.
  ]],
  constructors = {
    'lovr.physics.newMeshShape',
    'World:newMeshCollider'
  }
}
