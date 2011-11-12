package bc.game.asset 
{
	import bc.core.device.BcAssetCallback;
	import bc.core.device.BcAsset;

	/**
	 * @author Elias Ku
	 */
	public class BcGameLoader
	{
		public function BcGameLoader(callback:BcAssetCallback)
		{
			BcAsset.load("../asset/game.xml", callback);
		}
	}
}
