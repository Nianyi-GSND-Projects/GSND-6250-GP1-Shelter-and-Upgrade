using UnityEngine;
using System.Collections;

namespace Game
{
	public class Upgradable : MonoBehaviour
	{
		[SerializeField] GameObject upgraded;
		[SerializeField][Min(0)] float delay = 0.1f;

		void Awake()
		{
			upgraded.SetActive(false);
		}

		public void Upgrade()
		{
			StartCoroutine(nameof(UpgradeCoroutine));
		}

		IEnumerator UpgradeCoroutine()
		{
			Poof.MakePoof(upgraded);
			yield return new WaitForSeconds(delay);
			gameObject.SetActive(false);
			upgraded.SetActive(true);
		}
	}
}
