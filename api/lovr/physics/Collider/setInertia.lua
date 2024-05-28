return {
  summary = 'Set the inertia of the Collider.',
  description = [[
    Sets the inertia of the Collider.

    Inertia is kind of like "angular mass".  Regular mass determines how resistant the Collider is
    to linear forces (movement), whereas inertia determines how resistant the Collider is to torque
    (rotation).  Colliders with less inertia are more spinny.

    In 3D, inertia is represented by a 3x3 matrix, called a tensor.  To make calculations easier,
    the physics engine stores the inertia using eigenvalue decomposition, splitting the matrix into
    a diagonal matrix and a rotation.  It's complicated!

    In a realistic simulation, mass and inertia follow a linear relationship.  If the mass of an
    object increases, the diagonal part of its inertia should increase proportionally.
  ]],
  arguments = {
    dx = {
      type = 'number',
      description = 'The x component of the diagonal matrix.'
    },
    dy = {
      type = 'number',
      description = 'The y component of the diagonal matrix.'
    },
    dz = {
      type = 'number',
      description = 'The z component of the diagonal matrix.'
    },
    angle = {
      type = 'number',
      description = 'The angle of the inertia rotation, in radians.'
    },
    ax = {
      type = 'number',
      description = 'The x component of the rotation axis.'
    },
    ay = {
      type = 'number',
      description = 'The y component of the rotation axis.'
    },
    az = {
      type = 'number',
      description = 'The z component of the rotation axis.'
    },
    diagonal = {
      type = 'Vec3',
      description = 'A vector containing the 3 elements of a diagonal matrix.'
    },
    rotation = {
      type = 'Quat',
      description = 'The inertia rotation.'
    }
  },
  returns = {},
  variants = {
    {
      arguments = { 'dx', 'dy', 'dz', 'angle', 'ax', 'ay', 'az' },
      returns = {}
    },
    {
      arguments = { 'diagonal', 'rotation' },
      returns = {}
    }
  },
  notes = [[
    By default, the inertia of the Collider is kept up to date automatically as the Collider's
    shapes change.  To disable this, use `Collider:setAutomaticMass`.

    Use `Collider:resetMassData` to reset the inertia and other mass properties based on the
    Collider's shapes.

    If the Collider is kinematic or all rotation axes are disabled, this returns 0 for the diagonal
    and an identity quaternion for the rotation.
  ]],
  related = {
    'Collider:getMass',
    'Collider:setMass',
    'Collider:getCenterOfMass',
    'Collider:setCenterOfMass',
    'Collider:getAutomaticMass',
    'Collider:setAutomaticMass',
    'Collider:resetMassData',
    'Shape:getInertia'
  }
}
