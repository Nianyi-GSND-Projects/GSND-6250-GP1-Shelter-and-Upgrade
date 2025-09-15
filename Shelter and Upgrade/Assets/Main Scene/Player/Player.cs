using UnityEngine;
using UnityEngine.InputSystem;

namespace Game
{
	[RequireComponent(typeof(CharacterController))]
	[RequireComponent(typeof(PlayerInput))]
	public class Player : MonoBehaviour
	{
		#region Control
		[SerializeField][Range(0, 10)] float moveSpeed = 3.0f;
		Vector3 bufferMovementInput = default;

		[SerializeField][Range(0, 1)] float orientSpeed = 1.0f;
		float Azimuth
		{
			get => transform.eulerAngles.y;
			set
			{
				var euler = transform.eulerAngles;
				euler.y = value;
				transform.eulerAngles = euler;
			}
		}
		float Zenith
		{
			get => eye.eulerAngles.x;
			set
			{
				var euler = eye.eulerAngles;
				euler.x = value;
				eye.eulerAngles = euler;
			}
		}
		#endregion

		#region Component references
		[SerializeField] Transform eye;

		CharacterController controller;
		CharacterController Controller
		{
			get
			{
				if(controller == null)
					controller = GetComponent<CharacterController>();
				return controller;
			}
		}
		#endregion

		#region Unity life cycle
		void OnEnable()
		{
			Cursor.lockState = CursorLockMode.Locked;
		}
		void OnDisable()
		{
			Cursor.lockState = CursorLockMode.None;
		}

		void Update()
		{
			Vector3 world = transform.localToWorldMatrix.MultiplyVector(bufferMovementInput).normalized * moveSpeed;
			Controller.SimpleMove(world);
		}
		#endregion

		#region Input handlers
		protected void OnInputMoveDirection(InputValue value)
		{
			var raw = value.Get<Vector2>();
			bufferMovementInput = new Vector3(raw.x, 0, raw.y);
		}

		protected void OnInputOrientDelta(InputValue value)
		{
			var raw = value.Get<Vector2>();
			Azimuth += raw.x * orientSpeed;
			Zenith += raw.y * orientSpeed;
		}
		#endregion
	}
}
