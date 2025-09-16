using UnityEngine;

namespace Game
{
	public class Upgradable : MonoBehaviour
	{
		[SerializeField] GameObject upgraded;

		void Awake()
		{
			upgraded.SetActive(false);
		}

		public void Upgrade()
		{
			gameObject.SetActive(false);
			upgraded.SetActive(true);
		}
	}
}
