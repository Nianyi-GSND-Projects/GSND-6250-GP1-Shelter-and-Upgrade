using UnityEngine;
using System.Collections;

namespace Game
{
	[RequireComponent(typeof(ParticleSystem))]
	public class Poof : MonoBehaviour
	{
		ParticleSystem particle;
		[SerializeField] float radius;

		public float Radius
		{
			get => particle.shape.radius;
			set
			{
				var shape = particle.shape;
				shape.radius = radius = value;
			}
		}

		void Awake()
		{
			particle = GetComponent<ParticleSystem>();
		}

		IEnumerator Start()
		{
			Radius = radius;
			yield return new WaitForSeconds(particle.main.duration + particle.main.startLifetime.constant);
			Destroy(gameObject);
		}

		public static void MakePoof(GameObject target)
		{
			if(target == null)
				return;
			var renderers = target.GetComponentsInChildren<Renderer>(true);
			if(renderers.Length == 0)
				return;

			var bounds = renderers[0].bounds;
			foreach(var renderer in renderers)
				bounds.Encapsulate(renderer.bounds);
			Vector3 center = bounds.center;
			float radius = bounds.extents.magnitude;

			var poof = Instantiate(Resources.Load<GameObject>("Poof Particles")).GetComponent<Poof>();
			poof.Radius = radius;
			poof.transform.position = center;
		}
	}
}
