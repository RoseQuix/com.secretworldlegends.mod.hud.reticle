import com.GameInterface.Game.Dynel;

class descendent.hud.reticle.NotchFactory
{
	public static function generateNotches(dynel:Dynel):/*Number*/Array
	{
		var name:String = dynel.GetName();
		var notches:/*Number*/Array;
		
		switch (name) {
			////////////////////////////////////////
			// Dungeons
			////////////////////////////////////////
			
			// The Polaris
			case "Haugbui Mother":
				notches = [
					0.50  // Explodes (E5+)
				];
				break;
			case "The Varangian":
				notches = [
					0.90, // First submerge
					0.75, // Second submerge
					0.50  // Run to crates
				];
				break;
			case "Primordial Dweller":
				notches = [
					0.70, // "Real" Psychic Death Zone
					0.50  // Bomb adds stop spawning
				];
				break;
			case "The Ur-Draug":
				notches = [
					0.05  // Rocks explode
				];
				break;
			// Hell Raised
			case "Hardwired Fleshtank":
				notches = [
					0.75, // Two burning platforms
					0.50, // Three burning platforms
					0.25  // Four burning platforms
				];
				break;
			case "Recursia, Many-In-One":
				notches = [
					0.75, // Infernal Criticality
					0.50, // Infernal Criticality
					0.25  // Infernal Criticality
				];
				break;
			case "Machine Tyrant":
				notches = [
					0.55, // First walk to center
					0.30, // Second walk to center
					0.10  // Reflect shield stops
				];
				break;
			// The Darkness War
			case "Wayeb-Xul, the Hound of the Nameless Days":
				notches = [
					0.80  // End of first phase
				];
				break;
			// The Ankh
			case "Doctor Klein":
				notches = [
					0.25, // Defeat on bridge in Ankh 2
					0.20  // Teleport to top in Ankh 6
				];
				break;
			case "The Colossus, Melothat":
				// TODO: Bridge Melothat and Klein Melothat both have distinct
				//       ID32s and should have their own distinct notches.
				//       Unfortunately, Story and E1-E10 Melothat all have
				//       different IDs, so that's 22 IDs to collect.
				notches = [
					// These values only apply to Ankh 6.
					// They're close enough for Ankh 5 (and I feel less relevant there?)
					0.75, // First knee
					0.60, // Stand up
					0.50, // Second knee
					0.35, // Stand up
					0.25, // Third knee
					0.10  // Stand up
				]
				break;
			// Hell Fallen
			// TODO
			// The Facility
			case "Contact Core":
				notches = [
					0.50 // Repair bots stop spawning
				];
				break;
			case "Capsule Breaker":
			case "Elemental Potentialist":
			case "Psychosecurity Officer":
			case "Reality Surgeon":
			case "Sequence Analyst":
				notches = [
					0.25  // "Death"
				];
			// Hell Eternal
			case "Lustrehunter":
				// Fallback casts
				notches = [0.85, 0.75, 0.65, 0.55, 0.45, 0.35, 0.25, 0.15];
				break;
			case "Flagellatrix Superior":
				notches = [
					0.75, // Adds
					0.50, // Run!
					0.40, // Damage cap
					0.25  // Adds
				];
				break;
			case "Eblis, Dominus Inferni In Profondis":
				notches = [
					0.25  // Final Thunderdome
				];
				break;
			// The Slaughterhouse
			case "NKL-107":
				notches = [
					0.75, // First Burning Plasma
					0.50, // Second Burning Plasma
					0.25  // Final Burning Plasma, rampage mode
				];
				break;
			case "Aleksei-Chetyre":
				notches = [
					0.30  // Damage cap
				];
				break;
			
			////////////////////////////////////////
			// Raids
			////////////////////////////////////////
			
			case "The Unutterable Lurker":
				notches = [0.10, 0.25, 0.50, 0.67, 0.75];
				break;
			// case "The Eidolon of the Outer Dark"
 			// 	notches = [0.50];
			// 	break;
			// case "Bird of the Zero Point Pathogen":
			// 	notches = [0.50];
			// 	break;
			
			// Anything else.
			default:
				notches = [0.25, 0.50, 0.75];
				break;
		}
		
		return notches;
	}
	
}