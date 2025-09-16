using UnityEngine;

namespace Game
{
	public class ShelterGate : MonoBehaviour
	{
		[SerializeField] HingeJoint leftJoint, rightJoint;
		[SerializeField] bool isOpen = true;
		[SerializeField] Vector2 leftRange, rightRange;
		bool IsOpen
		{
			get => isOpen;
			set
			{
				isOpen = value;

				leftJoint.useSpring = true;
				var left = leftJoint.spring;
				left.targetPosition = isOpen ? leftRange.y : leftRange.x;
				leftJoint.spring = left;

				rightJoint.useSpring = true;
				var right = rightJoint.spring;
				right.targetPosition = isOpen ? rightRange.y : rightRange.x;
				rightJoint.spring = right;
			}
		}

		public void ToggleOpen()
		{
			IsOpen ^= true;
		}
	}
}
