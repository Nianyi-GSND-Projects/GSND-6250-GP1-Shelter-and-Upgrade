using UnityEngine;
using UnityEngine.Events;

namespace Game
{
	public class Interactable : MonoBehaviour
	{
		public string text;
		[SerializeField] bool oneTime;
		[SerializeField] UnityEvent onInteract;

		public void Interact()
		{
			onInteract?.Invoke();
			if(oneTime)
				enabled = false;
		}
	}
}
