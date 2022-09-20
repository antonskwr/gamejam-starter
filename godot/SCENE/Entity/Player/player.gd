extends KinematicBody2D

const MAX_SPEED = 400
const FRICTION = 0.2

var motion = Vector2()

func _physics_process(delta) -> void:
  update_motion(delta)
  move_and_slide(self.motion)

  if Input.is_action_just_pressed("accept"):
    JoystickManager.rumble_subtle()

func update_motion(delta) -> void:
  if Input.is_action_pressed("move_up") and not Input.is_action_pressed("move_down"):
    self.motion.y = -MAX_SPEED #add lerp for better feel
    # self.animation_direction.y = -1
  elif not Input.is_action_pressed("move_up") and Input.is_action_pressed("move_down"):
    self.motion.y = MAX_SPEED # add lerp for better feel
    # self.animation_direction.y = 1
  else:
    self.motion.y = lerp(motion.y, 0, FRICTION)
    # self.animation_direction.y = 0

  if Input.is_action_pressed("move_left") and not Input.is_action_pressed("move_right"):
    self.motion.x = -MAX_SPEED #add lerp for better feel
    # self.animation_direction.x = -1
  elif not Input.is_action_pressed("move_left") and Input.is_action_pressed("move_right"):
    self.motion.x = MAX_SPEED #add lerp for better feel
    # self.animation_direction.x = 1
  else:
    self.motion.x = lerp(motion.x, 0, FRICTION)
    # self.animation_direction.x = 0

  self.motion = self.motion.clamped(MAX_SPEED)
